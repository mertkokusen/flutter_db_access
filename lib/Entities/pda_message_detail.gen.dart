class PdaMessageDetail {
  int idMessageDetail;
  int idMessage;
  int idCustomer;
  int idUser;
  String dsUniqueKey;
  bool flRead;
  bool vrFlSent;
  
  PdaMessageDetail({
    this.idMessageDetail,
    this.idMessage,
    this.idCustomer,
    this.idUser,
    this.dsUniqueKey,
    this.flRead,
    this.vrFlSent,
  });

  static PdaMessageDetail fromMap(Map<String, dynamic> json) {
    return PdaMessageDetail()
      ..idMessageDetail = json['idMessageDetail'] as int
      ..idMessage = json['idMessage'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idUser = json['idUser'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..flRead = json['flRead'] == 1 ? true : false
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idMessageDetail': idMessageDetail,
        'idMessage': idMessage,
        'idCustomer': idCustomer,
        'idUser': idUser,
        'dsUniqueKey': dsUniqueKey,
        'flRead': flRead,
        'vrFlSent': vrFlSent,
      };
}