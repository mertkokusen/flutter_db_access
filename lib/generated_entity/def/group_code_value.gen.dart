
import 'package:database_access_layer/entity/def/group_code_value.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class GroupCodeValue extends GroupCodeValueAbstract{
  int idGroupCodeValue;
  int mtBitwiseValue;
  String dsTitle;
  String dsValue;
  
  GroupCodeValue({
    this.idGroupCodeValue,
    this.mtBitwiseValue,
    this.dsTitle,
    this.dsValue,
  });

  static GroupCodeValue fromMap(Map<String, dynamic> json) {
    return GroupCodeValue()
      ..idGroupCodeValue = json['idGroupCodeValue'] as int
      ..mtBitwiseValue = json['mtBitwiseValue'] as int
      ..dsTitle = json['dsTitle'] as String
      ..dsValue = json['dsValue'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idGroupCodeValue': idGroupCodeValue,
        'mtBitwiseValue': mtBitwiseValue,
        'dsTitle': dsTitle,
        'dsValue': dsValue,
      };
}