import 'package:flutter/material.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/filter_separator.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/in_stock_filter.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/price_filters.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/sort_filters.dart';

class FiltersModal extends StatelessWidget {
  const FiltersModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(ProjectColors.light),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back,
                color: Color(ProjectColors.white))),
        title: const Text(
          "Фильтры",
          style: TextStyle(
            color: Color(ProjectColors.white),
            fontSize: 20.0,
          ),
        ),
        backgroundColor: const Color(ProjectColors.black),
      ),
      body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                PriceFilters(),
                FilterSeparator(),
                SortFilters(),
                FilterSeparator(),
                InStockFilter(),
                FilterSeparator(),
              ])),
    );
  }
}
