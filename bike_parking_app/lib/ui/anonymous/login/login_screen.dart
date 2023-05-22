import 'package:bike_parking_app/constants/consts_image_paths.dart';
import 'package:bike_parking_app/ui/park_now/park_now.dart';
import 'package:bike_parking_app/widgets/common/buttons/cms_primary_button.dart';
import 'package:bike_parking_app/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (cmsContext, sizingInformation) {
        return SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ImagePathConstants.backgroundImage,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 90),
                        const Center(
                          child: Text(
                            "Welcome Back, Login",
                            style: TextStyle(
                                fontSize: 21,
                                color: Color(0xff03DAA1),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(height: 65),
                        const CmsTextBoxWidget(
                          hintText: "ID/Username",
                          prefixIcon: Icon(Icons.person_outline_rounded,
                              color: Color(0xffFFFFFF)),
                        ),
                        const SizedBox(height: 15),
                        const CmsTextBoxWidget(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock_outline,
                              color: Color(0xffFFFFFF)),
                        ),
                        const SizedBox(height: 40),
                        CmsPrimaryButton(
                            text: "Login",
                            onButtonPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ParkNowPage()),
                              );
                            })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
