import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tattoo_flutter/screens/main_screen/main_screen.dart';
import 'package:tattoo_flutter/screens/shop_item_screen/ui/shop_item_screen_provider.dart';
import 'package:tattoo_flutter/shared/lib/routes.dart';

class AppRouter extends StatelessWidget {
  const AppRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: Routes.main,
            builder: (context, state) => const MainScreen(),
          ),
          GoRoute(
            path: Routes.item,
            builder: (context, state) => ShopItemScreenProvider(
              id: state.pathParameters['id'] ?? "",
            ),
          ),
        ],
        initialLocation: Routes.main,
      ),
    );
  }
}
