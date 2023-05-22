import 'package:bike_parking_app/constants/colors.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

class CmsPrimaryButton extends StatelessWidget {
  const CmsPrimaryButton({required this.text, this.onButtonPressed, Key? key})
      : super(key: key);
  final String text;

  final Function()? onButtonPressed;
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return InkWell(
          onTap: onButtonPressed,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: ColorPathConstants.primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xff03DA9A),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    text,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
