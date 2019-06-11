class PdaPhotoActivity {
  int idPhotoActivity;
  int idCustomer;
  int idVisit;
  String dsUniqueKey;
  bool vrFlSent;
  
  PdaPhotoActivity({
    this.idPhotoActivity,
    this.idCustomer,
    this.idVisit,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static PdaPhotoActivity fromMap(Map<String, dynamic> json) {
    return PdaPhotoActivity()
      ..idPhotoActivity = json['idPhotoActivity'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idVisit = json['idVisit'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPhotoActivity': idPhotoActivity,
        'idCustomer': idCustomer,
        'idVisit': idVisit,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}