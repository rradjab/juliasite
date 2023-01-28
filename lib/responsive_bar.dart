import 'appBar/app_bar_large.dart';
import 'appBar/app_bar_medium.dart';
import 'appBar/app_bar_small.dart';

class ResponsiveBar {
  static returnBar(double width) {
    if (width < 800) {
      return const AppBarSmall("");
    } else if (width < 1200) {
      return const AppBarMedium("");
    } else {
      return const AppBarLarge("");
    }
  }
}
