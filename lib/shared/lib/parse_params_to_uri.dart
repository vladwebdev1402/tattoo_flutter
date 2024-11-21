String parseParamsToUri(Map<String, dynamic>? params) {
  if (params == null || params.isEmpty) return '';

  String uri = '?';
  params.forEach((key, value) {
    uri += '$key=$value&';
  });

  return uri;
}
