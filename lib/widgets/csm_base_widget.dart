import 'package:bike_parking_app/utils/screen_information.dart';
import 'package:bike_parking_app/utils/ui_utils.dart';
import 'package:flutter/cupertino.dart';

class CmsBaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation)? builder;
  const CmsBaseWidget({Key? key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(
      builder: (context, boxConstraints) {
        var sizingInformation = SizingInformation(
            mediaQuery.orientation,
            getDeviceType(mediaQuery),
            mediaQuery.size,
            Size(boxConstraints.maxWidth, boxConstraints.maxHeight));
        return builder!(context, sizingInformation);
      },
    );
  }
}
