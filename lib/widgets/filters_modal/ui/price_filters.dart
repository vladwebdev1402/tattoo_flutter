import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/price_field/price_field.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/filter_title.dart';

class PriceFilters extends StatefulWidget {
  const PriceFilters({super.key});

  @override
  State<PriceFilters> createState() => _PriceFiltersState();
}

class _PriceFiltersState extends State<PriceFilters> {
  final debouncer = Debouncer();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersCubit, FiltersState>(builder: (context, state) {
      if (state is FiltersUpdateState) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const FilterTitle(text: "Цена"),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 83.0,
                      child: PriceField(
                        onChanged: (value) => {
                          debouncer.debounce(
                              duration: const Duration(milliseconds: 500),
                              onDebounce: () => {
                                    BlocProvider.of<FiltersCubit>(context)
                                        .changeStartPrice(value == ''
                                            ? 0
                                            : int.parse(value.substring(
                                                0, min(value.length, 10))))
                                  })
                        },
                        initialValue: state.filters.startPrice != 0
                            ? state.filters.startPrice.toString()
                            : '',
                      )),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Container(
                    height: 1.0,
                    width: 14.0,
                    color: const Color(ProjectColors.darkOrange),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  SizedBox(
                      width: 83.0,
                      child: PriceField(
                          onChanged: (value) => {
                                debouncer.debounce(
                                    duration: const Duration(milliseconds: 500),
                                    onDebounce: () => {
                                          BlocProvider.of<FiltersCubit>(context)
                                              .changeEndPrice(value == ''
                                                  ? 0
                                                  : int.parse(value.substring(0,
                                                      min(value.length, 10))))
                                        })
                              },
                          initialValue: state.filters.endPrice != 0
                              ? state.filters.endPrice.toString()
                              : '')),
                ],
              )
            ]);
      }

      return Container();
    });
  }
}
