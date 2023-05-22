import 'package:bike_parking_app/ui/unpark_now/unpark_now.dart';
import 'package:bike_parking_app/widgets/csm_base_widget.dart';
import 'package:flutter/material.dart';

class SearchCardWidget extends StatelessWidget {
  const SearchCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CmsBaseWidget(
      builder: (context, sizingInformation) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UnParkNowPage()),
            );
          },
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff063A34),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const ListTile(
              leading: Icon(
                Icons.directions_bike_rounded,
                color: Color(0xffFFFFFF),
              ),
              title: Text(
                "ISB-5132",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                ),
              ),
              subtitle: Text(
                "Abdul Shakoor",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                ),
              ),
              trailing: Text(
                "09/05/2023",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
