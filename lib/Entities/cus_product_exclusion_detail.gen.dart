class CusProductExclusionDetail {
  int idProductExclusionDetail;
  int idProductExclusion;
  int idProduct;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  
  CusProductExclusionDetail({
    this.idProductExclusionDetail,
    this.idProductExclusion,
    this.idProduct,
    this.dtValidFrom,
    this.dtValidTo,
  });

  static CusProductExclusionDetail fromMap(Map<String, dynamic> json) {
    return CusProductExclusionDetail()
      ..idProductExclusionDetail = json['idProductExclusionDetail'] as int
      ..idProductExclusion = json['idProductExclusion'] as int
      ..idProduct = json['idProduct'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProductExclusionDetail': idProductExclusionDetail,
        'idProductExclusion': idProductExclusion,
        'idProduct': idProduct,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
      };
}