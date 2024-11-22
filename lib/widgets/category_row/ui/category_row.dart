import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_cubit.dart';
import 'package:tattoo_flutter/widgets/category_row/cubit/category_row_state.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategorysCubit, CategorysState>(
        builder: (context, state) {
      if (state is CategorysStaticState) {
        BlocProvider.of<CategorysCubit>(context).getData();
      }

      if (state is CategorysLoadingState) {
        return const CircularProgressIndicator();
      }

      if (state is CategorysLoadedState) {
        return BlocBuilder<FiltersCubit, FiltersState>(
            builder: (context, filtersState) {
          if (filtersState is FiltersUpdateState) {
            return SizedBox(
              height: 48.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: state.data.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 20.0,
                ),
                itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? 16.0 : 0.0,
                        right: index == state.data.length - 1 ? 16.0 : 0.0),
                    child: Button(
                      text: state.data[index].name!,
                      onTap: () => BlocProvider.of<FiltersCubit>(context)
                          .changeCategory(state.data[index].sId!),
                      isActive: filtersState.filters.category ==
                          state.data[index].sId,
                    )),
              ),
            );
          }

          return Container();
        });
      }

      if (state is CategorysErorState) {
        return Text(
          state.error,
          textAlign: TextAlign.center,
        );
      }

      return Container();
    });
  }
}
