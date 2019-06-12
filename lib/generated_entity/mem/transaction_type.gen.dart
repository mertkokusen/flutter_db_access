
import 'package:database_access_layer/entity/mem/transaction_type.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class TransactionType extends TransactionTypeAbstract{
  int idTransactionType;
  String dsTransactionType;
  
  TransactionType({
    this.idTransactionType,
    this.dsTransactionType,
  });

  static TransactionType fromMap(Map<String, dynamic> json) {
    return TransactionType()
      ..idTransactionType = json['idTransactionType'] as int
      ..dsTransactionType = json['dsTransactionType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTransactionType': idTransactionType,
        'dsTransactionType': dsTransactionType,
      };
}