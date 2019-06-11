class PrdAssortmentListDetail {
  int idAssortmentListDetail;
  int idAssortmentList;
  int idProduct;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  
  PrdAssortmentListDetail({
    this.idAssortmentListDetail,
    this.idAssortmentList,
    this.idProduct,
    this.dtValidFrom,
    this.dtValidTo,
  });

  static PrdAssortmentListDetail fromMap(Map<String, dynamic> json) {
    return PrdAssortmentListDetail()
      ..idAssortmentListDetail = json['idAssortmentListDetail'] as int
      ..idAssortmentList = json['idAssortmentList'] as int
      ..idProduct = json['idProduct'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAssortmentListDetail': idAssortmentListDetail,
        'idAssortmentList': idAssortmentList,
        'idProduct': idProduct,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
      };
}