
import 'package:flutter/material.dart';

class AppBarWithBackAndTitle extends StatelessWidget {
  final String text;
  final bool shouldShowBack;
  const AppBarWithBackAndTitle(
      {required this.text, this.shouldShowBack = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //  BackButtonWidget(),
        Text(
          text
         
        ),
      ],
    );
  }
}
