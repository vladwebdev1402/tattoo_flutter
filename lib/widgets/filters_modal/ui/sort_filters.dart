import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/shared/ui/radio_button/radio_button.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/filter_title.dart';

class SortFilters extends StatelessWidget {
  const SortFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => FiltersCubit(),
        child:
            BlocBuilder<FiltersCubit, FiltersState>(builder: (context, state) {
          if (state is FiltersUpdateState) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const FilterTitle(text: "Сортировка"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RadioButton(
                                label: "Популярные",
                                onChanged: () {},
                                isActive: false),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RadioButton(
                                label: "По алфавиту",
                                onChanged: () {},
                                isActive: false),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RadioButton(
                                label: "Дешевые",
                                onChanged: () {},
                                isActive: false),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RadioButton(
                                label: "Дорогие",
                                onChanged: () {},
                                isActive: false),
                          ])),
                ]);
          }

          return Container();
        }));
  }
}