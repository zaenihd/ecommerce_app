import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widget/button.dart';
import 'package:ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce_app/presentation/auth/pages/signup_page.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            _emailField(),
            const SizedBox(
              height: 20.0,
            ),
            _continueButton(context),
            const SizedBox(
              height: 10.0,
            ),
            _createAccount(context)
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      "Sign in",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Enter email"),
    );
  }

  Widget _continueButton(BuildContext context) {
    return ButtonCostum(
      title: "Continue",
      onPressed: () {
        AppNavigator.push(context, const EnterPassword());
      },
      color: Colors.purple,
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(
          text: "Do you have an account?",
          style: TextStyle(color: Colors.black)),
      TextSpan(
        text: "Create One",
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        recognizer: TapGestureRecognizer()..onTap = () {
           AppNavigator.push(context, const SignupPage());
        },
      ),
    ]));
  }
}
