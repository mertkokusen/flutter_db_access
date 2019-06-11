class AccPaymentType {
  int idPaymentType;
  String dsPaymentType;
  bool flDue;
  
  AccPaymentType({
    this.idPaymentType,
    this.dsPaymentType,
    this.flDue,
  });

  static AccPaymentType fromMap(Map<String, dynamic> json) {
    return AccPaymentType()
      ..idPaymentType = json['idPaymentType'] as int
      ..dsPaymentType = json['dsPaymentType'] as String
      ..flDue = json['flDue'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPaymentType': idPaymentType,
        'dsPaymentType': dsPaymentType,
        'flDue': flDue,
      };
}