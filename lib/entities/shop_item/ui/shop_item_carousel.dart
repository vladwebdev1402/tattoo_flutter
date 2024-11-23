import 'package:flutter/material.dart';
import 'package:tattoo_flutter/entities/shop_item/model/marcers.dart';
import 'package:tattoo_flutter/shared/ui/carousel/carousel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopItemCarousel extends StatelessWidget {
  final Marcers marcers;
  final List<String> images;
  final bool isBig;

  const ShopItemCarousel(
      {super.key,
      required this.marcers,
      required this.images,
      this.isBig = false});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Carousel(
        images: images,
        withPagination: isBig,
        height: isBig ? 320.0 : 228.0,
      ),
      Positioned(
          top: 10.0,
          left: 10.0,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                    visible: marcers.hot!,
                    child: Column(children: [
                      SvgPicture.asset('assets/images/hot.svg'),
                      const SizedBox(
                        height: 8.0,
                      )
                    ])),
                Visibility(
                    visible: marcers.isNew!,
                    child: Column(children: [
                      SvgPicture.asset('assets/images/new.svg'),
                      const SizedBox(
                        height: 8.0,
                      )
                    ])),
                Visibility(
                    visible: marcers.promotion!,
                    child: Column(children: [
                      SvgPicture.asset('assets/images/promotion.svg'),
                      const SizedBox(
                        height: 8.0,
                      )
                    ])),
                Visibility(
                    visible: marcers.discount!,
                    child: Column(children: [
                      SvgPicture.asset('assets/images/discount.svg'),
                      const SizedBox(
                        height: 8.0,
                      )
                    ])),
                Visibility(
                    visible: marcers.no!,
                    child: Column(children: [
                      SvgPicture.asset('assets/images/no.svg'),
                    ]))
              ]))
    ]);
  }
}
