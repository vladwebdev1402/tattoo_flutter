import 'dart:convert';

import 'package:tattoo_flutter/entities/shop_item/model/item.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/model/shop_item_screen.dart';
import 'package:tattoo_flutter/shared/api/instance.dart';

Future<Item> getShopItem(String id) async {
  final response = await ApiInstance.get(
    '/item',
    {"_id": id},
  );

  if (response.statusCode == 200) {
    return ShopItemScreenRes.fromJson(json.decode(response.body)).data![0];
  } else {
    throw Exception('Failed to load items');
  }
}
