class TsmCertificationType {
  int idCertificationType;
  String dsCertificationType;
  
  TsmCertificationType({
    this.idCertificationType,
    this.dsCertificationType,
  });

  static TsmCertificationType fromMap(Map<String, dynamic> json) {
    return TsmCertificationType()
      ..idCertificationType = json['idCertificationType'] as int
      ..dsCertificationType = json['dsCertificationType'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCertificationType': idCertificationType,
        'dsCertificationType': dsCertificationType,
      };
}