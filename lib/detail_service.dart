import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mycourse/detail_model.dart';

class DetailService {
  Future<DetailModel> showDetail(String? id) async {
    var url = 'http://si-sdm.id/ecourse/api/web/v1/courses/get-item?id=$id';

    var response = await http.get(Uri.parse(url));

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      DetailModel detail = DetailModel.fromJson(data);
      return detail;
    } else {
      throw Exception('Failed To Get Data!');
    }
  }
}
