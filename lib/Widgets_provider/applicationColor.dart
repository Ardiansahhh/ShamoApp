import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
    bool _islightblue = true;

    bool get islightblue => _islightblue;

    set islightblue(bool value) {
      _islightblue = value;
      notifyListeners();
    }

    Color get color => (_islightblue) ? Colors.lightBlue : Colors.amber; 
}