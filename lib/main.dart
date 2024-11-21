import 'package:flutter/material.dart';
import 'package:tattoo_flutter/entities/shop_item/model/item.dart';
import 'package:tattoo_flutter/entities/shop_item/model/marcers.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';

final marcersMock =
    Marcers(hot: true, isNew: true, promotion: true, discount: true, no: false);
final ShopItemMock = Item(
    marcers: marcersMock,
    id: "656f1797f6ac31fc27f6faec",
    name: "Foxxx Kitsune Mini Black Vintage RCA ",
    description:
        "Viper - машинка собрана на мощном моторе, рама данной модели сделана из прочного и лёгкого алюминиевого сплава. В связи с этим вес данной машины всего 120g./nДанная модель оснащена регулируемым эксцентриком. Для регулировки нужного вам хода иглы просто перемещайте ваш держатель в зажиме, вперёд или назад. Так же эксцентрик спроектирован так, что на машине отсутствует центробежная тяга, в следствии чего отсутствует вибрация в процессе работы. Под крепление бандажной резинки предусмотрен небольшой и удобный штифт снизу./nДиаметр зажимного болта сделан больше чем на аналогах — так что держатель фиксируется без проблем и лишних усилий. Данная модель без труда толкает любые иглы и картриджи./nВсе необходимые рекомендации предусмотрены на прилагаемой к машинке инструкции, вложенной в коробку с товаром. Машинка подходит как для тату, так и для татуажа.",
    price: 6000,
    oldPrice: 0,
    image:
        "http://localhost:3050/api/image/1732221176156-6de74a0443c150b1b4af366ade05bb68870ccd91-1.png",
    count: 10,
    category: "656e08f54d876d465c40bbd5",
    brand: "656eb282e4c2862b92e23a7a");

void main() => runApp(MaterialApp(
    theme: ThemeData(fontFamily: "Jost"),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(ProjectColors.dark),
        title: const Text("Flutter Demo"),
      ),
      body: SizedBox(
        width: 280.0,
        child: ShopItem(item: ShopItemMock),
      ),
    )));
