import 'package:flutter/material.dart';
import 'package:hritesh_s_application1/presentation/iphone_14_pro_max_269_screen/iphone_14_pro_max_269_screen.dart';

class AppRoutes {
  static const String iphone14ProMax269Screen = '/iphone_14_pro_max_269_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone14ProMax269Screen: Iphone14ProMax269Screen.builder,
        initialRoute: Iphone14ProMax269Screen.builder
      };
}
