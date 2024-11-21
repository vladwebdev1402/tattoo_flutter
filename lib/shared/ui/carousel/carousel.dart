import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/ui/carousel/pagination.dart';

class Carousel extends StatefulWidget {
  final List<String> images;
  final bool withPagination;

  const Carousel(
      {super.key, required this.images, this.withPagination = false});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentPage = 0;
  final CarouselSliderController controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: widget.images.map((link) => Image.network(link)).toList(),
            carouselController: controller,
            options: CarouselOptions(
              height: 228.0,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) => setState(() {
                currentPage = index;
              }),
            )),
        Visibility(
          visible: widget.withPagination,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Pagination(
                currentPage: currentPage,
                countPage: widget.images.length,
                changePage: (index) {
                  setState(() {
                    currentPage = index;
                    controller.animateToPage(index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut);
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
