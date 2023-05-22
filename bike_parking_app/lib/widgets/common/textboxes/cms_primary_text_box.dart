import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

class CmsTextBoxWidget extends StatelessWidget {
  const CmsTextBoxWidget(
      {required this.hintText,
      // required this.validator,
      // required this.controller,
      // required this.autovalidateMode,
      // this.suffixImage,
      // this.textBoxwidth,
      // this.isObscureText = false,
      this.prefixImage,
      this.prefixIcon,
      // this.prefixImage,
      // this.suffixIcon,
      // this.inputType = TextInputType.text,
      // this.maxLine = 1,
      // this.maxlength,
      // this.isReadOnly = false,
      Key? key})
      : super(key: key);
  final String hintText;
  // final String? Function(String?)? validator;
  // final TextEditingController controller;
  // final AutovalidateMode autovalidateMode;
  // final bool isObscureText;
  final Icon? prefixIcon;
  final Image? prefixImage;
  // final IconButton? suffixIcon;
  // final TextInputType inputType;
  // final int maxLine;
  // final bool isReadOnly;
  // final int? maxlength;
  // final Image? suffixImage;
  // final double? textBoxwidth;
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return SizedBox(
          height: 65,
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
              filled: true,
              fillColor: const Color(0xff063A34),
              prefixIcon: prefixImage ?? prefixIcon,
            ),
          ),
        );
      },
    );
  }
}
