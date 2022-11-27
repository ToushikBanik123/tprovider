import 'package:flutter/foundation.dart';


class numberProvider with ChangeNotifier{
  int _number = 100;

  get number => _number;

  void numberPlusOne(){
    _number++;
    notifyListeners();
  }

  void numberMinusOne(){
    _number--;
    notifyListeners();
  }

}