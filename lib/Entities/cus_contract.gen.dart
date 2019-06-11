class CusContract {
  int idContract;
  int idSalesOrg;
  bool flActive;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  String dsErpCode;
  String dsCommercialContract;
  String dsCreditControlArea;
  int idPriceListType;
  int mtDueDays;
  String dsPriceListType;
  
  CusContract({
    this.idContract,
    this.idSalesOrg,
    this.flActive,
    this.dtValidFrom,
    this.dtValidTo,
    this.dsErpCode,
    this.dsCommercialContract,
    this.dsCreditControlArea,
    this.idPriceListType,
    this.mtDueDays,
    this.dsPriceListType,
  });

  static CusContract fromMap(Map<String, dynamic> json) {
    return CusContract()
      ..idContract = json['idContract'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..flActive = json['flActive'] == 1 ? true : false
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
      ..dsErpCode = json['dsErpCode'] as String
      ..dsCommercialContract = json['dsCommercialContract'] as String
      ..dsCreditControlArea = json['dsCreditControlArea'] as String
      ..idPriceListType = json['idPriceListType'] as int
      ..mtDueDays = json['mtDueDays'] as int
      ..dsPriceListType = json['dsPriceListType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idContract': idContract,
        'idSalesOrg': idSalesOrg,
        'flActive': flActive,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
        'dsErpCode': dsErpCode,
        'dsCommercialContract': dsCommercialContract,
        'dsCreditControlArea': dsCreditControlArea,
        'idPriceListType': idPriceListType,
        'mtDueDays': mtDueDays,
        'dsPriceListType': dsPriceListType,
      };
}