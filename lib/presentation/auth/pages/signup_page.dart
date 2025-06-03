import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widget/button.dart';
import 'package:ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createAccountText(context),
            _firstNameField(),
            const SizedBox(
              height: 20.0,
            ),
            _lastNameField(),
            const SizedBox(
              height: 20.0,
            ),
            _emailField(),
            const SizedBox(
              height: 20.0,
            ),
            _passwordField(),
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

  Widget _createAccountText(BuildContext context) {
    return const Text(
      "Create Account",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField() {
    return const TextField(
      decoration: InputDecoration(hintText: "FirstName"),
    );
  }

  Widget _lastNameField() {
    return const TextField(
      decoration: InputDecoration(hintText: "LastName"),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Email"),
    );
  }

  Widget _passwordField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Password"),
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
        text: "Sign in",
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        recognizer: TapGestureRecognizer()..onTap = () {
          AppNavigator.pushReplacement(context, const SigninPage());
        },
      ),
    ]));
  }
}
