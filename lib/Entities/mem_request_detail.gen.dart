class MemRequestDetail {
  int idPkHeader;
  int idMem;
  int idRequestType;
  String dsBarcode;
  String dsModel;
  String dsClass;
  String dsCategory;
  String dsLogoType;
  
  MemRequestDetail({
    this.idPkHeader,
    this.idMem,
    this.idRequestType,
    this.dsBarcode,
    this.dsModel,
    this.dsClass,
    this.dsCategory,
    this.dsLogoType,
  });

  static MemRequestDetail fromMap(Map<String, dynamic> json) {
    return MemRequestDetail()
      ..idPkHeader = json['idPkHeader'] as int
      ..idMem = json['idMem'] as int
      ..idRequestType = json['idRequestType'] as int
      ..dsBarcode = json['dsBarcode'] as String
      ..dsModel = json['dsModel'] as String
      ..dsClass = json['dsClass'] as String
      ..dsCategory = json['dsCategory'] as String
      ..dsLogoType = json['dsLogoType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPkHeader': idPkHeader,
        'idMem': idMem,
        'idRequestType': idRequestType,
        'dsBarcode': dsBarcode,
        'dsModel': dsModel,
        'dsClass': dsClass,
        'dsCategory': dsCategory,
        'dsLogoType': dsLogoType,
      };
}