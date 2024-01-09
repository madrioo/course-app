import 'package:flutter/material.dart';
import 'package:mycourse/category_model.dart';
import 'package:mycourse/category_service.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _category = [];
  List<Category> get category => _category;
  set category(List<Category> category) {
    _category = category;
    notifyListeners();
  }

  Future<List<Category>> showCategory() async {
    try {
      List<Category>? category = await CategoryService().showCategory();
      _category = category;
      return category;
    } catch (e) {
      print(e);
      var category = Category();
      List<Category> model = [category];
      return model;
    }
  }
}
