import 'dart:math';

import 'package:flutter/material.dart';

class Weight {
  bool isFemale = false;
  bool isMale = false;

  int _height = 150;
  int _weight = 60;
  int _age = 25;
  List<String> classifications = ["OVERWEIGHT", "NORMAL", "UNDERWEIGHT"];
  List<String> descriptions = [
    "You have a higher than normal body weight. Try to exercise more.",
    "You have a normal body weight. Good job!",
    "You have a lower than normal body weight. You can eat a bit more."
  ];

  int get height => _height;

  set height(int value) {
    _height = value;
  }

  int get weight => _weight;
  int get age => _age;

  double get BMI => weight / pow(height / 100, 2);

  String getClassification(int index) => classifications[index];
  String getDescription(int index) => descriptions[index];

  void changeGender(String name) {
    if (name == "MALE") {
      isMale = true;
      isFemale = false;
    } else {
      isMale = false;
      isFemale = true;
    }
  }

  void removeFromWeight() => (weight > 1) ? _weight-- : _weight;

  void addToWeight() => (weight < 200) ? _weight++ : _weight;

  void removeFromAge() => (age > 1) ? _age-- : _age;

  void addToAge() => (age < 200) ? _age++ : _age;

  int getBMI_range() {
    if (BMI >= 25) return 0;
    if (BMI > 18.5) return 1;
    return 2;
  }
}
