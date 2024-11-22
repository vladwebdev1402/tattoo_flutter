import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/lib/formate_number.dart';

class ShopItemPrice extends StatelessWidget {
  final int oldPrice;
  final int price;
  final bool isBig;

  const ShopItemPrice(
      {super.key,
      required this.oldPrice,
      required this.price,
      this.isBig = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('${formateNumber(price)} ₽',
            style: TextStyle(
                color: const Color(ProjectColors.orange),
                fontSize: isBig ? 24.0 : 17.0,
                fontWeight: FontWeight.bold)),
        SizedBox(
          width: isBig ? 10.0 : 5.0,
        ),
        Visibility(
            visible: oldPrice != 0,
            child: Text(
              '${formateNumber(oldPrice)} ₽',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: const Color(ProjectColors.gray2),
                  fontSize: isBig ? 17.0 : 15.0),
            )),
      ],
    );
  }
}
