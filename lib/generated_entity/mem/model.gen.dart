
import 'package:database_access_layer/entity/mem/model.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class Model extends ModelAbstract{
  int idModel;
  String dsModel;
  int idModelCategory;
  
  Model({
    this.idModel,
    this.dsModel,
    this.idModelCategory,
  });

  static Model fromMap(Map<String, dynamic> json) {
    return Model()
      ..idModel = json['idModel'] as int
      ..dsModel = json['dsModel'] as String
      ..idModelCategory = json['idModelCategory'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idModel': idModel,
        'dsModel': dsModel,
        'idModelCategory': idModelCategory,
      };
}