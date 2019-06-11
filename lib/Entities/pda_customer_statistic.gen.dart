class PdaCustomerStatistic {
  int idCustomerStatistic;
  int idCustomer;
  DateTime dtProcess;
  int mtProcessOrder;
  String dsSales;
  String dsStockBalance;
  
  PdaCustomerStatistic({
    this.idCustomerStatistic,
    this.idCustomer,
    this.dtProcess,
    this.mtProcessOrder,
    this.dsSales,
    this.dsStockBalance,
  });

  static PdaCustomerStatistic fromMap(Map<String, dynamic> json) {
    return PdaCustomerStatistic()
      ..idCustomerStatistic = json['idCustomerStatistic'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dtProcess = json['dtProcess'] as DateTime
      ..mtProcessOrder = json['mtProcessOrder'] as int
      ..dsSales = json['dsSales'] as String
      ..dsStockBalance = json['dsStockBalance'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerStatistic': idCustomerStatistic,
        'idCustomer': idCustomer,
        'dtProcess': dtProcess,
        'mtProcessOrder': mtProcessOrder,
        'dsSales': dsSales,
        'dsStockBalance': dsStockBalance,
      };
}