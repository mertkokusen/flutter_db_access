class MemAuditPhoto {
  int idAuditPhoto;
  int idAudit;
  int idAuditDetail;
  String dsUniqueKey;
  bool vrFlSent;
  
  MemAuditPhoto({
    this.idAuditPhoto,
    this.idAudit,
    this.idAuditDetail,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static MemAuditPhoto fromMap(Map<String, dynamic> json) {
    return MemAuditPhoto()
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