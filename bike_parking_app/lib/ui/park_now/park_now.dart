import 'package:bike_parking_app/constants/consts_image_paths.dart';
import 'package:bike_parking_app/widgets/common/buttons/cms_primary_button.dart';
import 'package:bike_parking_app/widgets/common/buttons/dropdown_button.dart';
import 'package:bike_parking_app/widgets/common/textboxes/cms_primary_text_box.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

import '../parking_location/parking_location_screen.dart';

class ParkNowPage extends StatefulWidget {
  const ParkNowPage({Key? key}) : super(key: key);

  @override
  State<ParkNowPage> createState() => _ParkNowPageState();
}

class _ParkNowPageState extends State<ParkNowPage> {
  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return CmsBaseWidget(
          builder: (cmsContext, sizingInformation) {
            return SafeArea(
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xffE2F9F2),
                    child: const Icon(
                      Icons.search_rounded,
                      size: 35,
                      color: Color(0xff007F3F),
                    )),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                backgroundColor: Colors.white,
                bottomNavigationBar: SizedBox(
                  height: 66,
                  child: BottomAppBar(
                    color: const Color(0xff182724),
                    notchMargin: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(ImagePathConstants.addIcon,
                              height: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(ImagePathConstants.subIcon,
                              height: 40),
                        ),
                      ],
                    ),
                  ),
                ),
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
                            const SizedBox(height: 60),
                            const CmsTextBoxWidget(
                              hintText: "Owner Full Name",
                              prefixIcon: Icon(Icons.person_outline_rounded,
                                  color: Color(0xffFFFFFF)),
                            ),
                            const SizedBox(height: 10),
                            const CmsTextBoxWidget(
                              hintText: "Bike Number",
                              prefixIcon: Icon(Icons.directions_bike_rounded,
                                  color: Color(0xffFFFFFF)),
                            ),
                            const SizedBox(height: 15),
                            const CmsTextBoxWidget(
                              hintText: "Contact Number",
                              prefixIcon:
                                  Icon(Icons.phone, color: Color(0xffFFFFFF)),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DropDownButton(
                                  text: "Honda 125",
                                  width: 170,
                                  widget: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff05CAAD)),
                                      child: Image.asset(
                                          ImagePathConstants.bikeIcon),
                                    ),
                                  ),
                                ),
                                DropDownButton(
                                  text: "Color",
                                  width: 125,
                                  widget: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffC94343)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            CmsPrimaryButton(
                              text: "Park It Now",
                              onButtonPressed: () {
                                showDialog<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      backgroundColor: const Color(0xff063A34),
                                      content: SizedBox(
                                        height: 300,
                                        width: 300,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 15),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 60,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff03DA9F),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                    ImagePathConstants
                                                        .successIcon),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            const Text(
                                              "Your Bike Has been Parked Successfully in Second Row.against digital Token No:",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            const Text(
                                              "DI-0001.",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xffFFFFFF),
                                                fontWeight: FontWeight.w500,
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                            const SizedBox(height: 10),
                                            const Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Thank You !!",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 35,
                                                width: 120,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color:
                                                        const Color(0xff03DA9F),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: TextButton(
                                                  child: const Text(
                                                    'Okay !!',
                                                    style: TextStyle(
                                                      color: Color(0xffFFFFFF),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const ParkLocationPage()),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
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
      },
    );
  }
}
