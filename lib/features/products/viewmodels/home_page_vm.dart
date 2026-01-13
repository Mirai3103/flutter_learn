import 'package:flutter/material.dart';

class HomePageVm extends ChangeNotifier {
  int page = 1;
  String search = "";

  int get skip => (page - 1) * 4;
  int get take => 4;

  void nextPage() {
    page++;
    notifyListeners();
  }

  void previousPage() {
    if (page > 1) {
      page--;
      notifyListeners();
    }
  }
  void setSearch(String newSearch) {
    search = newSearch;
    page = 1;
    notifyListeners();
  }
}
