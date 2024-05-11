import 'package:flutter/material.dart';
import '/Utils/routers.dart';
// import 'package:kuis2_provis_kel-15/Provider/Database/db_provider.dart';
import '/Screens/Authentication/login.dart';
// import 'package:kuis2_provis_kel-15/Screens/home_page.dart';
// import 'package:kuis2_provis_kel-15/Utils/routers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: FlutterLogo()),
    );
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      // DatabaseProvider().getToken().then((value) {
      //   if (value == '') {
      //     PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
      //   } else {
      //     PageNavigator(ctx: context).nextPageOnly(page: const HomePage());
      //   }
      // });
      PageNavigator(ctx: context).nextPageOnly(page: const LoginPage());
    });
  }
}