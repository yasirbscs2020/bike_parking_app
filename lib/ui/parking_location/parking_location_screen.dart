import 'package:bike_parking_app/constants/consts_image_paths.dart';
import 'package:bike_parking_app/ui/search/search_byke.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

class ParkLocationPage extends StatelessWidget {
  const ParkLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return CmsBaseWidget(
          builder: (cmsContext, sizingInformation) {
            return SafeArea(
                child: Scaffold(
              floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchPage()),
                    );
                  },
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
                        child:
                            Image.asset(ImagePathConstants.addIcon, height: 40),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            Image.asset(ImagePathConstants.subIcon, height: 40),
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
                          image: AssetImage(ImagePathConstants.backgroundImage),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.arrow_back_ios_new,
                                color: Color(0xffFFFFFF),
                              ),
                              Text(
                                "Parking slots",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                              Text(
                                "8 / 17",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff182724),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "Row 01",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Row 02",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(color: Colors.grey),
                          Table(
                            border: TableBorder.symmetric(
                                inside: const BorderSide(
                                    color: Colors.grey)), //table border
                            children: [
                              const TableRow(children: [
                                SizedBox(
                                  height: 50,
                                  child: TableCell(
                                    child: Center(
                                      child: Text(
                                        "01",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  child: TableCell(
                                    child: Center(
                                      child: Text(
                                        "02",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                const SizedBox(
                                  height: 50,
                                  child: TableCell(
                                    child: Center(
                                      child: Text(
                                        "03",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Image.asset(
                                    ImagePathConstants.bikeIcon,
                                    height: 40,
                                  ),
                                ),
                              ]),
                              TableRow(children: [
                                const SizedBox(
                                  height: 50,
                                  child: TableCell(
                                    child: Center(
                                      child: Text(
                                        "05",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Image.asset(
                                    ImagePathConstants.bikeIcon,
                                    height: 40,
                                  ),
                                ),
                              ]),
                              TableRow(
                                children: [
                                  const SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "07",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Image.asset(
                                      ImagePathConstants.bikeIcon,
                                      height: 40,
                                    ),
                                  ),
                                ],
                              ),
                              const TableRow(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "09",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "10",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const TableRow(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "11",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "12",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                children: [
                                  const SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Center(
                                          child: Text(
                                            "13",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xffFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Image.asset(
                                      ImagePathConstants.bikeIcon,
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                              const TableRow(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "14",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: TableCell(
                                      child: Center(
                                        child: Text(
                                          "15",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
          },
        );
      },
    );
  }
}
