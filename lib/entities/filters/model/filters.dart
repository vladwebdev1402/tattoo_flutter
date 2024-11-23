class Filters {
  String category;
  String sortField;
  String sortOrder;

  bool no;
  bool hot;

  int startPrice;
  int endPrice;

  Filters({
    this.category = 'all',
    this.no = false,
    this.hot = false,
    this.sortField = "",
    this.sortOrder = "",
    this.startPrice = 0,
    this.endPrice = 0,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    if (category != "all") map['category'] = category;
    if (sortOrder.isNotEmpty) map['sortOrder'] = sortOrder;
    if (sortField.isNotEmpty) map['sortField'] = sortField;

    if (no) map['no'] = no;
    if (hot) map['news'] = hot;

    if (startPrice != 0) map['startPrice'] = startPrice;
    if (endPrice != 0) map['endPrice'] = endPrice;

    return map;
  }
}
