class PaymentType {
  int idPaymentType;
  String dsPaymentType;
  bool flDue;
  
  PaymentType({
    this.idPaymentType,
    this.dsPaymentType,
    this.flDue,
  });

  static PaymentType fromMap(Map<String, dynamic> json) {
    return PaymentType()
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