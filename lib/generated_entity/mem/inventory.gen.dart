
import 'package:database_access_layer/entity/mem/inventory.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class Inventory extends InventoryAbstract{
  int idInventory;
  int idDealer;
  int idWarehouse;
  int idModelCategory;
  int idModelType;
  int idBusinessCategory;
  int mtQuantity;
  
  Inventory({
    this.idInventory,
    this.idDealer,
    this.idWarehouse,
    this.idModelCategory,
    this.idModelType,
    this.idBusinessCategory,
    this.mtQuantity,
  });

  static Inventory fromMap(Map<String, dynamic> json) {
    return Inventory()
      ..idInventory = json['idInventory'] as int
      ..idDealer = json['idDealer'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..idModelCategory = json['idModelCategory'] as int
      ..idModelType = json['idModelType'] as int
      ..idBusinessCategory = json['idBusinessCategory'] as int
      ..mtQuantity = json['mtQuantity'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idInventory': idInventory,
        'idDealer': idDealer,
        'idWarehouse': idWarehouse,
        'idModelCategory': idModelCategory,
        'idModelType': idModelType,
        'idBusinessCategory': idBusinessCategory,
        'mtQuantity': mtQuantity,
      };
}