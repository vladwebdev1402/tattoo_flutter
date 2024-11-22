import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/price_field/price_field.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/filter_title.dart';

class PriceFilters extends StatelessWidget {
  const PriceFilters({super.key});

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
                  const FilterTitle(text: "Цена"),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 83.0, child: PriceField()),
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
                      const SizedBox(width: 83.0, child: PriceField()),
                    ],
                  )
                ]);
          }

          return Container();
        }));
  }
}
