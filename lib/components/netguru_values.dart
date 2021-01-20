import 'dart:collection';
import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'package:randomizer/randomizer.dart';

import 'package:recruitmenttask/components/value.dart';

class NetguruValues extends ChangeNotifier {
  List<Value> values = [
    Value(statement: "Exceed clients' and colleagues' expectations"),
    Value(
        statement:
            "Take ownership and question the status quo in a constructive manner"),
    Value(
        statement:
            "Be brave, curious and experiment. Learn from all successes and failures"),
    Value(statement: "Act in a way that makes all of us proud"),
    Value(
        statement:
            "Build an inclusive, transparent and socially responsible culture"),
    Value(statement: "Be ambitious, grow yourself and the people around you"),
    Value(statement: "Recognize excellence and engagement"),
  ];

  void addValue(String newNetguruValue) {
    final userValue = Value(statement: newNetguruValue);
    values.add(userValue);
    notifyListeners();
  }

  String generateValue() {
    Random random = new Random();
    int randomNumber = random.nextInt(values.length);
    return values[randomNumber].toString();
  }

  UnmodifiableListView<Value> get ourValues {
    return UnmodifiableListView(values);
  }

  int get valueCount {
    return values.length;
  }

  int listLength() {
    return values.length;
  }

  Randomizer randomizer = Randomizer();
}
