
import 'package:database_access_layer/entity/cus/contract_assortment_list.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class ContractAssortmentList extends ContractAssortmentListAbstract{
  int idContractAssortmentList;
  int idContract;
  int idAssortmentList;
  
  ContractAssortmentList({
    this.idContractAssortmentList,
    this.idContract,
    this.idAssortmentList,
  });

  static ContractAssortmentList fromMap(Map<String, dynamic> json) {
    return ContractAssortmentList()
      ..idContractAssortmentList = json['idContractAssortmentList'] as int
      ..idContract = json['idContract'] as int
      ..idAssortmentList = json['idAssortmentList'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idContractAssortmentList': idContractAssortmentList,
        'idContract': idContract,
        'idAssortmentList': idAssortmentList,
      };
}