import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '/Constants/url.dart';
import 'package:http/http.dart' as http;
// import 'package:kuis2_provis_kel-15/Provider/Database/db_provider.dart';
// import 'package:kuis2_provis_kel-15/Screens/Authentication/login.dart';
// import 'package:kuis2_provis_kel-15/Screens/home_page.dart';
// import 'package:kuis2_provis_kel-15/Utils/routers.dart';

class AuthenticationProvider extends ChangeNotifier {
  ///Base Url
  final requestBaseUrl = AppUrl.baseUrl;

  ///Setter
  bool _isLoading = false;
  String _resMessage = '';

  //Getter
  bool get isLoading => _isLoading;
  String get resMessage => _resMessage;

  void registerUser({
    required String? username,
    required String? password,
    BuildContext? context,
  }) async {
    if (username == null || password == null) {
      print('Username or password is null');
      return;
    }
    _isLoading = true;
    notifyListeners();

    String url = "$requestBaseUrl/users/";

    final body = {
      "username": username,
      "password": password
    };
    print(body);

    try {
      http.Response req =
          await http.post(Uri.parse(url), body: json.encode(body));

      if (req.statusCode == 200 || req.statusCode == 201) {
        final res = json.decode(req.body);

        print(res);
        _isLoading = false;
        _resMessage = "Account created!";
        notifyListeners();
        // PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
        // print(req.body);
      } else {
        final res = json.decode(req.body);

        _resMessage = res['message'];

        print(res);
        _isLoading = false;
        notifyListeners();
      }
    } on SocketException catch (_) {
      _isLoading = false;
      _resMessage = "Internet connection is not available`";
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _resMessage = "Please try again`";
      notifyListeners();

      print(":::: $e");
    }
    
  }

  //Login
  void loginUser({
    required String? username,
    required String? password,
    BuildContext? context,
  }) async {
    _isLoading = true;
    notifyListeners();

    String url = "$requestBaseUrl/login";

    final body = {"username": username, "password": password};
    print(body);

    try {
      http.Response req =
          await http.post(Uri.parse(url), body: json.encode(body));

      if (req.statusCode == 200 || req.statusCode == 201) {
        final res = json.decode(req.body);

        print(res);
        _isLoading = false;
        _resMessage = "Login successfull!";
        notifyListeners();

        // ///Save users data and then navigate to homepage
        // final userId = res['user']['id'];
        // final token = res['authToken'];
        // DatabaseProvider().saveToken(token);
        // DatabaseProvider().saveUserId(userId);
        // PageNavigator(ctx: context).nextPageOnly(page: const HomePage());
      } else {
        final res = json.decode(req.body);

        _resMessage = res['message'];

        print(res);
        _isLoading = false;
        notifyListeners();
      }
    } on SocketException catch (_) {
      _isLoading = false;
      _resMessage = "Internet connection is not available`";
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      _resMessage = "Please try again`";
      notifyListeners();

      print(":::: $e");
    }
  }

  void clear() {
    _resMessage = "";
    // _isLoading = false;
    notifyListeners();
  }
}

