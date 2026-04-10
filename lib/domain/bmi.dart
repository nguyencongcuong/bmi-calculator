import 'dart:math';

import 'package:bmi_calculator/core/enums.dart';

class BMI {
  static Gender _gender = Gender.male;
  static double _height = 1.6;
  static double _weight = 50;
  static int _age = 25;

  // Getters
  static Gender get gender => _gender;
  static double get height => _height;
  static double get weight => _weight;
  static int get age => _age;
  static double get value => _weight / pow(_height, 2);

  // Setters
  static set gender(Gender gender) => _gender = gender;
  static set height(double height) => _height = height < 0 ? 0 : height;
  static set weight(double weight) => _weight = weight < 0 ? 0 : weight;
  static set age(int age) => _age = age < 0 ? 0 : age;

  static String getResult() {
    return BMICategory.values
        .firstWhere((category) => value < category.value)
        .label;
  }

  static String getAdvice() {
    return BMICategory.values
        .firstWhere((category) => category.label == getResult())
        .advice;
  }
}
