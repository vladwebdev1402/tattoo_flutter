import 'dart:convert';
import 'package:tattoo_flutter/shared/api/instance.dart';
import 'package:tattoo_flutter/widgets/category_row/model/categorys.dart';

Future<Categorys> getCategorys() async {
  final response = await ApiInstance.get('/category');

  if (response.statusCode == 200) {
    return Categorys.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load categorys');
  }
}
