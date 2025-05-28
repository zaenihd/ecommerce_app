import 'package:ecommerce_app/core/assets/image_url.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin.dart';
import 'package:ecommerce_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecommerce_app/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const SigninPage(),
              ));
        }
      },
      child: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
            child: Image.asset(
          ImageUrl.splash,
          height: 100,
        )),
      ),
    );
  }
}
