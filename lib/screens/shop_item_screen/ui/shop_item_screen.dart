import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item_carousel.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item_price.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/cubit/shop_item_screen_cubit.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/cubit/shop_item_screen_state.dart';
import 'package:tattoo_flutter/shared/api/instance.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/lib/routes.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';

class ShopItemScreen extends StatelessWidget {
  final String id;

  const ShopItemScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(ProjectColors.light),
      appBar: AppBar(
        backgroundColor: const Color(ProjectColors.black),
        title: const Text("Товар",
            style:
                TextStyle(fontSize: 20.0, color: Color(ProjectColors.white))),
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go(Routes.main),
            icon: const Icon(Icons.arrow_back,
                color: Color(ProjectColors.white))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<ShopItemScreenCubit, ShopItemScreenState>(
              builder: (context, state) {
            if (state is ShopItemScreenStaticState) {
              BlocProvider.of<ShopItemScreenCubit>(context)
                  .getData(id.substring(1));
            }

            if (state is ShopItemScreenLoadingState) {
              return const Center(
                heightFactor: 20.0,
                child: CircularProgressIndicator(),
              );
            }

            if (state is ShopItemScreenLoadedState) {
              final item = state.data;
              final separatedDescription = item.description!.split('/n');

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name!,
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(ProjectColors.dark))),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 320.0,
                      height: 273.0,
                      child: ShopItemCarousel(
                          marcers: item.marcers!,
                          isBig: true,
                          images: List.generate(
                              4,
                              (index) => item.image!.replaceAll(
                                  "localhost", ApiInstance.domen)).toList()),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ShopItemPrice(
                        price: item.price!,
                        oldPrice: item.oldPrice!,
                        isBig: false,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      SizedBox(
                        width: 210.0,
                        child: Button(text: "В корзину", onTap: () {}),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Text(
                            separatedDescription[index],
                            style: const TextStyle(
                                color: Color(ProjectColors.dark),
                                fontSize: 15.0),
                          ),
                      separatorBuilder: (contxt, index) => const SizedBox(
                            height: 10.0,
                          ),
                      itemCount: separatedDescription.length)
                ],
              );
            }
            return Container();
          }),
        ),
      ),
    );
  }
}
