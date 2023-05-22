import 'dart:async';
import 'package:bike_parking_app/constants/consts_image_paths.dart';
import 'package:bike_parking_app/ui/anonymous/login/login_screen.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const LoginPage()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (cmsContext, sizingInformation) {
        return SafeArea(
          child: Scaffold(
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "DI Parking App",
                        style: TextStyle(
                            fontSize: 29,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 15),
                      Image.asset(ImagePathConstants.logoImage, height: 120),
                    ],
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
