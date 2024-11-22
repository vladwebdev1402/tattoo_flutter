import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tattoo_flutter/entities/shop_item/ui/shop_item.dart';
import 'package:tattoo_flutter/shared/ui/button/button.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_cubit.dart';
import 'package:tattoo_flutter/widgets/items_list/cubit/items_list_state.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsListCubit, ItemsListState>(
        builder: (context, state) {
      if (state is ItemsListStaticState) {
        BlocProvider.of<ItemsListCubit>(context).getData();
      }

      if (state is ItemsListLoadingState) {
        return const CircularProgressIndicator();
      }
      if (state is ItemsListErorState) {
        return Text(state.error);
      }

      if (state is ItemsListLoadedState) {
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
                      BlocProvider.of<ItemsListCubit>(context).changePage(),
                ))
          ],
        );
      }
      return Container();
    });
  }
}
