
import 'package:database_access_layer/entity/acc/tax_matrix.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class TaxMatrix extends TaxMatrixAbstract{
  int idTaxMatrix;
  String dsCustomerClassification;
  String dsProductClassification;
  int mtTaxRate;
  
  TaxMatrix({
    this.idTaxMatrix,
    this.dsCustomerClassification,
    this.dsProductClassification,
    this.mtTaxRate,
  });

  static TaxMatrix fromMap(Map<String, dynamic> json) {
    return TaxMatrix()
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