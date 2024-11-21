import 'package:tattoo_flutter/entities/shop_item/model/item.dart';

class ShopItems {
  List<Item>? data;
  int? count;
  String? message;

  ShopItems({this.data, this.message});

  ShopItems.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Item>[];
      json['data'].forEach((v) {
        data!.add(Item.fromJson(v));
      });
    }
    count = json['count'];
    message = json['message'];
  }
}
