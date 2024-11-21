class Marcers {
  bool? no;
  bool? isNew;
  bool? promotion;
  bool? discount;
  bool? hot;

  Marcers({this.no, this.isNew, this.promotion, this.discount, this.hot});

  Marcers.fromJson(Map<String, dynamic> json) {
    no = json['no'];
    isNew = json['new'];
    promotion = json['promotion'];
    discount = json['discount'];
    hot = json['hot'];
  }
}
