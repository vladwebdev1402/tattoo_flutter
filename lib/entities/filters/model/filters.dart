class Filters {
  String category;
  String sortField;
  String sortOrder;

  bool no;

  int startPrice;
  int endPrice;

  int page;

  Filters({
    this.category = 'all',
    this.no = false,
    this.sortField = "",
    this.sortOrder = "",
    this.startPrice = 0,
    this.endPrice = 0,
    this.page = 1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    if (category != "all") map['category'] = category;
    if (sortOrder.isNotEmpty) map['sortOrder'] = sortOrder;
    if (sortField.isNotEmpty) map['sortField'] = sortField;

    if (no) map['no'] = !no;

    if (startPrice != 0) map['startPrice'] = startPrice;
    if (endPrice != 0) map['endPrice'] = endPrice;

    map['limit'] = page * 8;

    return map;
  }
}
