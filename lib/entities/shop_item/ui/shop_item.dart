import 'package:flutter/material.dart';
import 'package:tattoo_flutter/entities/shop_item/model/item.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item_carousel.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item_price.dart';
import 'package:tattoo_flutter/shared/api/instance.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';

class ShopItem extends StatelessWidget {
  final Item item;

  const ShopItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShopItemCarousel(
            marcers: item.marcers!,
            images: List.generate(
                    4,
                    (index) =>
                        item.image!.replaceAll("localhost", ApiInstance.domen))
                .toList()),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(item.name!,
                style: const TextStyle(
                    color: Color(ProjectColors.dark), fontSize: 15.0))),
        const SizedBox(
          height: 8.0,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: ShopItemPrice(price: item.price!, oldPrice: item.oldPrice!)),
        const SizedBox(
          height: 16.0,
        ),
        Padding(
            padding:
                const EdgeInsets.only(left: 11.0, right: 11.0, bottom: 20.0),
            child: Button(text: "В корзину", onTap: () => {}, fullWidth: true)),
      ],
    );
  }
}
