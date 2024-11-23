import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/shared/ui/switch_button/switch_button.dart';
import 'package:tattoo_flutter/widgets/filters_modal/ui/filter_title.dart';

class InStockFilter extends StatelessWidget {
  const InStockFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersCubit, FiltersState>(builder: (context, state) {
      if (state is FiltersUpdateState) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const FilterTitle(text: "Только в наличии"),
              SwitchButton(
                  isActive: state.filters.no,
                  onChanged: (value) {
                    BlocProvider.of<FiltersCubit>(context).changeNo(value);
                  })
            ]);
      }

      return Container();
    });
  }
}
