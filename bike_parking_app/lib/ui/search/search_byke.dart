import 'package:bike_parking_app/constants/consts_image_paths.dart';
import 'package:bike_parking_app/ui/search/seach_card_wifget.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search,
                                    color: Colors.grey),
                                hintText: 'Search by bike number',
                                hintStyle: const TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1,
                                    color: Color(0xff03DA9F),
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                shrinkWrap: false,
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: SearchCardWidget(),
                                  );
                                },
                              ),
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
