import 'package:bmi_calculator/core/enums.dart';

extension ROUTEExtension on ROUTE {
  String get path => switch (this) {
    ROUTE.home => '/',
    ROUTE.result => '/result',
  };
}
