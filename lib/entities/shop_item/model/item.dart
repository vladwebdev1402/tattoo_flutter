import 'package:tattoo_flutter/entities/shop_item/model/marcers.dart';

class Item {
  Marcers? marcers;
  String? id;
  String? name;
  String? description;
  int? price;
  int? oldPrice;
  String? image;
  int? count;
  String? category;
  String? brand;

  Item(
      {this.marcers,
      this.id,
      this.name,
      this.description,
      this.price,
      this.oldPrice,
      this.image,
      this.count,
      this.category,
      this.brand});

  Item.fromJson(Map<String, dynamic> json) {
    marcers =
        json['marcers'] != null ? Marcers?.fromJson(json['marcers']) : null;
    id = json['_id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    oldPrice = json['oldPrice'];
    image = json['image'];
    count = json['count'];
    category = json['category'];
    brand = json['brand'];
  }
}
