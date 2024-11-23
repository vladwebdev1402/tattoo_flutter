class Routes {
  static const main = '/';
  static const item = '/item:id';

  static String getItemRoute(String id) => '/item:$id';
}
