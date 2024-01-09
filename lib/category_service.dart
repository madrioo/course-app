import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mycourse/category_model.dart';

class CategoryService {
  Future<List<Category>> showCategory() async {
    var url = 'http://si-sdm.id/ecourse/api/web/v1/course-categories/all';

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['items'];
      List<Category> category = [];

      for (var item in data) {
        category.add(Category.fromJson(item));
      }
      return category;
    } else {
      throw Exception('Failed To Get Data!');
    }
  }
}
