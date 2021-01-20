import 'package:flutter/cupertino.dart';
import 'package:recruitmenttask/components/value.dart';

class ListOfFavourities extends ChangeNotifier {
  List<Value> favouriteValues = [];

  void addValue(String newFavourite) {
    final userFavourite = Value(statement: newFavourite);
    favouriteValues.add(userFavourite);
    notifyListeners();
  }

  int get valueCount {
    return favouriteValues.length;
  }
}
