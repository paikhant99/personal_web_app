import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolios/ui/customs/custom_style.dart';
import 'package:my_portfolios/ui/private_view/dashboard_screen.dart';
import 'package:my_portfolios/ui/private_view/user_preference_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/admin";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _txtMailController;
  late TextEditingController _txtPasswordController;
  bool isLoading = false;
  FirebaseAuthException? error;

  @override
  void initState() {
    super.initState();
    _txtMailController = TextEditingController();
    _txtPasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: (error != null)
                  ? Text(
                      error!.code,
                      style: const TextStyle(color: Colors.red),
                    )
                  : Container()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: TextField(
                  autofocus: true,
                  controller: _txtMailController,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(),
                      labelText: 'Email Address')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 200,
              child: TextField(
                  controller: _txtPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      labelText: 'Password')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: greenElevatedButtonStyle,
                onPressed: () async {
                  setState(() {
                    isLoading = true;
                  });
                  var result = await Provider.of<UserPreferenceViewmodel>(
                          context,
                          listen: false)
                      .signIn(
                          _txtMailController.text, _txtPasswordController.text);

                  result.whenSuccess((_) {
                    error = null;
                    _txtMailController.text = "";
                    _txtPasswordController.text = "";
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardScreen()),
                    );
                  });

                  setState(() {
                    isLoading = false;
                    result.whenError((errorResult) {
                      error = errorResult;
                    });
                  });
                },
                child: const Text('SIGN IN')),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: isLoading ? const CircularProgressIndicator() : Container(),
          ),
        ],
      )),
    );
  }
}
