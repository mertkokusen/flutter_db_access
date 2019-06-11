class AccTaxMatrix {
  int idTaxMatrix;
  String dsCustomerClassification;
  String dsProductClassification;
  int mtTaxRate;
  
  AccTaxMatrix({
    this.idTaxMatrix,
    this.dsCustomerClassification,
    this.dsProductClassification,
    this.mtTaxRate,
  });

  static AccTaxMatrix fromMap(Map<String, dynamic> json) {
    return AccTaxMatrix()
      ..idTaxMatrix = json['idTaxMatrix'] as int
      ..dsCustomerClassification = json['dsCustomerClassification'] as String
      ..dsProductClassification = json['dsProductClassification'] as String
      ..mtTaxRate = json['mtTaxRate'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaxMatrix': idTaxMatrix,
        'dsCustomerClassification': dsCustomerClassification,
        'dsProductClassification': dsProductClassification,
        'mtTaxRate': mtTaxRate,
      };
}