import 'dart:convert';
import 'package:tattoo_flutter/shared/api/instance.dart';
import 'package:tattoo_flutter/widgets/items_list/model/shop_items.dart';

const limit = 8;

Future<ShopItems> getItemsList(int page) async {
  final response = await ApiInstance.get('/item', {
    'limit': limit * page,
  });

  if (response.statusCode == 200) {
    return ShopItems.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load items');
  }
}
