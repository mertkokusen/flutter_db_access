
import 'package:database_access_layer/entity/mem/audit_photo.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class AuditPhoto extends AuditPhotoAbstract{
  int idAuditPhoto;
  int idAudit;
  int idAuditDetail;
  String dsUniqueKey;
  bool vrFlSent;
  
  AuditPhoto({
    this.idAuditPhoto,
    this.idAudit,
    this.idAuditDetail,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static AuditPhoto fromMap(Map<String, dynamic> json) {
    return AuditPhoto()
      ..idAuditPhoto = json['idAuditPhoto'] as int
      ..idAudit = json['idAudit'] as int
      ..idAuditDetail = json['idAuditDetail'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAuditPhoto': idAuditPhoto,
        'idAudit': idAudit,
        'idAuditDetail': idAuditDetail,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}