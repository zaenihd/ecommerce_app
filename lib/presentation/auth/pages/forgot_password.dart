import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widget/button.dart';
import 'package:ecommerce_app/presentation/auth/pages/enter_password.dart';

import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
            _continueButton(context),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      "Forgot Password",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Enter password"),
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

}
