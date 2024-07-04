import 'package:skeleton_structure/commons.dart';

const SizedBox sizedBoxHeight10 = SizedBox(height: 10);
const SizedBox sizedBoxHeight25 = SizedBox(height: 25);
const SizedBox sizedBoxHeight100 = SizedBox(height: 100);

class MediaQuerySize {
  // this gives the screen width of the device, to a specified percent, else it will default to 6%
  static screenWidth(
      {required BuildContext context, double? percent = 0.06}) {
    return MediaQuery.sizeOf(context).width * percent!;
  }

  // this gives the screen height of the device, to a specified percent, else it will default to 20%
  static screenHeight(
      {required BuildContext context, double? percent = 0.2}) {
    return MediaQuery.sizeOf(context).height * percent!;
  }

  static deviceOrientation(BuildContext context) {
    return MediaQuery.orientationOf(context);
  }
}
