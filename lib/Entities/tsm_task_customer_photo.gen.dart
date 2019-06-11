class TsmTaskCustomerPhoto {
  int idTaskCustomerPhoto;
  bool valid;
  int idTaskCustomer;
  String dsUniqueKey;
  bool vrFlSent;
  
  TsmTaskCustomerPhoto({
    this.idTaskCustomerPhoto,
    this.valid,
    this.idTaskCustomer,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static TsmTaskCustomerPhoto fromMap(Map<String, dynamic> json) {
    return TsmTaskCustomerPhoto()
      ..idTaskCustomerPhoto = json['idTaskCustomerPhoto'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idTaskCustomer = json['idTaskCustomer'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskCustomerPhoto': idTaskCustomerPhoto,
        'valid': valid,
        'idTaskCustomer': idTaskCustomer,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}