class CshInvoiceDetail {
  int idInvoiceDetail;
  int idCashInvoice;
  int idItemSort;
  int idItem;
  String dsItemName;
  int mtItemPrice;
  int mtItemQuantity;
  String dsItemMeasureUnit;
  int mtAdjustmentPercent;
  int mtItemVat;
  
  CshInvoiceDetail({
    this.idInvoiceDetail,
    this.idCashInvoice,
    this.idItemSort,
    this.idItem,
    this.dsItemName,
    this.mtItemPrice,
    this.mtItemQuantity,
    this.dsItemMeasureUnit,
    this.mtAdjustmentPercent,
    this.mtItemVat,
  });

  static CshInvoiceDetail fromMap(Map<String, dynamic> json) {
    return CshInvoiceDetail()
      ..idInvoiceDetail = json['idInvoiceDetail'] as int
      ..idCashInvoice = json['idCashInvoice'] as int
      ..idItemSort = json['idItemSort'] as int
      ..idItem = json['idItem'] as int
      ..dsItemName = json['dsItemName'] as String
      ..mtItemPrice = json['mtItemPrice'] as int
      ..mtItemQuantity = json['mtItemQuantity'] as int
      ..dsItemMeasureUnit = json['dsItemMeasureUnit'] as String
      ..mtAdjustmentPercent = json['mtAdjustmentPercent'] as int
      ..mtItemVat = json['mtItemVat'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idInvoiceDetail': idInvoiceDetail,
        'idCashInvoice': idCashInvoice,
        'idItemSort': idItemSort,
        'idItem': idItem,
        'dsItemName': dsItemName,
        'mtItemPrice': mtItemPrice,
        'mtItemQuantity': mtItemQuantity,
        'dsItemMeasureUnit': dsItemMeasureUnit,
        'mtAdjustmentPercent': mtAdjustmentPercent,
        'mtItemVat': mtItemVat,
      };
}