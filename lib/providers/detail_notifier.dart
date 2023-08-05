import 'package:flutter/material.dart';

class DetailNotifier extends ChangeNotifier {
  bool _isFavorite = false;

  bool get isFavorite => _isFavorite;

  void changeFavoriteStatus() {
    _isFavorite = !isFavorite;
    notifyListeners();
  }
}
