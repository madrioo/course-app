import 'package:flutter/material.dart';
import 'package:mycourse/detail_model.dart';
import 'package:mycourse/detail_service.dart';

class DetailProvider with ChangeNotifier {
  DetailModel? _detail;
  DetailModel? get detail => _detail;
  set detail(DetailModel? detail) {
    _detail = detail;
    notifyListeners();
  }

  Future<DetailModel> getDetail(String? id) async {
    try {
      DetailModel? detail = await DetailService().showDetail(id);
      _detail = detail;
      return detail;
    } catch (e) {
      print(e);
      return DetailModel();
    }
  }
}
