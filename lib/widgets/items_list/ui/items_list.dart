import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_cubit.dart';
import 'package:tattoo_flutter/entities/filters/cubit/filters_state.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item.dart';
import 'package:tattoo_flutter/shared/lib/colors.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_cubit.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_state.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FiltersCubit, FiltersState>(listener: (context, state) {
      if (state is FiltersUpdateState) {
        BlocProvider.of<ItemsListCubit>(context).getData(state.filters);
      }
    }, child:
        BlocBuilder<ItemsListCubit, ItemsListState>(builder: (context, state) {
      if (state is ItemsListStaticState) {
        final state = context.watch<FiltersCubit>().state;
        if (state is FiltersUpdateState) {
          BlocProvider.of<ItemsListCubit>(context).getData(state.filters);
        }
      }

      if (state is ItemsListLoadingState) {
        return const Center(
          heightFactor: 20.0,
          child: CircularProgressIndicator(),
        );
      }
      if (state is ItemsListErorState) {
        return Text(state.error);
      }

      if (state is ItemsListLoadedState) {
        if (state.count == 0) {
          return const Center(
            heightFactor: 20.0,
            child: Text(
              "Ничего не нашлось",
              style:
                  TextStyle(fontSize: 20.0, color: Color(ProjectColors.dark)),
            ),
          );
        }

        return Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    ShopItem(item: state.data[index]),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 8.0,
                    ),
                itemCount: state.data.length),
            const SizedBox(
              height: 16.0,
            ),
            Visibility(
                visible: state.count > state.data.length,
                child: Button(
                  text: "Показать ещё",
                  onTap: () =>
                      BlocProvider.of<FiltersCubit>(context).changePage(),
                ))
          ],
        );
      }

      return Container();
    }));
  }
}
