import 'package:ecommerce_app/common/widget/button.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            _passwordField(),
            const SizedBox(
              height: 20.0,
            ),
            _continueButton(),
            const SizedBox(
              height: 10.0,
            ),
            _forgotPassword()
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

  Widget _passwordField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Enter password"),
    );
  }

  Widget _continueButton() {
    return ButtonCostum(
      title: "Continue",
      onPressed: () {},
      color: Colors.purple,
    );
  }

  Widget _forgotPassword() {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(
          text: "Forgot password?",
          style: TextStyle(color: Colors.black)),
      TextSpan(
        text: "Reset",
        style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        recognizer: TapGestureRecognizer()..onTap = () {
           
        },
      ),
    ]));
  }
}
