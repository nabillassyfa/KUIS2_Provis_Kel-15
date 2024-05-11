import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Provider/AuthProvider/auth_provider.dart';
import '/Screens/Authentication/register.dart';
import '/Utils/routers.dart';
import '/Utils/snack_message.dart';
import '/Widgets/button.dart';
import '/Widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _username.clear();
    _password.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login ')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    customTextField(
                      title: 'Username',
                      controller: _username,
                      hint: 'Enter your username',
                    ),
                    customTextField(
                      title: 'Password',
                      controller: _password,
                      hint: 'Enter your secured password',
                    ),

                    ///Button
                    Consumer<AuthenticationProvider>(
                      builder: (context, auth, child) {
                      WidgetsBinding.instance!.addPostFrameCallback((_) {
                        if (auth.resMessage != '') {
                          showMessage(
                              message: auth.resMessage, context: context);

                          ///Clear the response message to avoid duplicate
                          auth.clear();
                        }
                      });
                      return customButton(
                        text: 'Login',
                        tap: () {
                          if (_username.text.isEmpty || _password.text.isEmpty) {
                            showMessage(
                                message: "All fields are required",
                                context: context);
                          } else {
                            auth.loginUser(
                                context: context,
                                username: _username.text.trim(),
                                password: _password.text.trim());
                          }
                        },
                        context: context,
                        status: auth.isLoading,
                      );
                    }),

                    // Consumer<AuthenticationProvider>(
                    //   builder: (context, auth, child) {
                    //   return customButton(
                    //     text: 'Login',
                    //     tap: () {
                    //       if (_username.text.isEmpty || _password.text.isEmpty) {
                    //         showMessage(
                    //             message: "All fields are required",
                    //             context: context);
                    //       } else {
                    //         auth.loginUser(
                    //             context: context,
                    //             username: _username.text.trim(),
                    //             password: _password.text.trim());
                    //       }
                    //     },
                    //     context: context,
                    //     status: auth.isLoading,
                    //   );
                    // }),

                    const SizedBox(
                      height: 10,
                    ),

                    GestureDetector(
                      onTap: () {
                        PageNavigator(ctx: context)
                            .nextPage(page: const RegisterPage());
                      },
                      child: const Text('Register Instead'),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}