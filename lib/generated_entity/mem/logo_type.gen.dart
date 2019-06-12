
import 'package:database_access_layer/entity/mem/logo_type.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class LogoType extends LogoTypeAbstract{
  int idLogoType;
  String dsLogoType;
  
  LogoType({
    this.idLogoType,
    this.dsLogoType,
  });

  static LogoType fromMap(Map<String, dynamic> json) {
    return LogoType()
      ..idLogoType = json['idLogoType'] as int
      ..dsLogoType = json['dsLogoType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idLogoType': idLogoType,
        'dsLogoType': dsLogoType,
      };
}