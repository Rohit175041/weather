import 'package:intl/intl.dart';

class Util {
  //static String appId ="ADD YOUR OWN APPID";
  static String appId = "ed60fcfbd110ee65c7150605ea8aceea";
  // static String appId = "81271b79fd4d2e92b8d57eedb106a0f3";

  static String getFormattedDate(DateTime dateTime) {
    return DateFormat("EEEE, MMM d, y").format(dateTime);
    //... 1999
  }
}
