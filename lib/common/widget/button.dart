import 'package:ecommerce_app/common/widget/text.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ButtonCostum extends StatelessWidget {
  ButtonCostum(
      {super.key,
      required this.title,
      this.navigation = true,
      required this.onPressed,
      this.margin,
      required this.color});

  String title;
  Function() onPressed;
  bool navigation;
  Color color;
  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      height: 45,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          child: Txt(
            text: title,
            weight: FontWeight.bold,
            color: Colors.white,
          )),
    );
  }
}