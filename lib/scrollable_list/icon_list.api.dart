import 'dart:convert';

import 'package:animation_test/scrollable_list/icon_list.model.dart';
import 'package:http/http.dart' as http;

class IconListApi {
  static Future<IconList> fetchIconList() async {
    final response = await http.get('http://localhost:3000/icons');
    if (response.statusCode == 200) {
      return IconList.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load IconList');
    }
  }
}
