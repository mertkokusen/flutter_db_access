
import 'package:database_access_layer/entity/mem/model_category.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class ModelCategory extends ModelCategoryAbstract{
  int idModelCategory;
  String dsModelCategory;
  String dsModelClass;
  int flScan;
  
  ModelCategory({
    this.idModelCategory,
    this.dsModelCategory,
    this.dsModelClass,
    this.flScan,
  });

  static ModelCategory fromMap(Map<String, dynamic> json) {
    return ModelCategory()
      ..idModelCategory = json['idModelCategory'] as int
      ..dsModelCategory = json['dsModelCategory'] as String
      ..dsModelClass = json['dsModelClass'] as String
      ..flScan = json['flScan'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idModelCategory': idModelCategory,
        'dsModelCategory': dsModelCategory,
        'dsModelClass': dsModelClass,
        'flScan': flScan,
      };
}