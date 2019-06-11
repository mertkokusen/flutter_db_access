class PdaNoGpsReason {
  int idNoGpsReason;
  String dsNoGpsReason;
  int mtOrder;
  bool flAutomatic;
  bool flPasswordRequired;
  
  PdaNoGpsReason({
    this.idNoGpsReason,
    this.dsNoGpsReason,
    this.mtOrder,
    this.flAutomatic,
    this.flPasswordRequired,
  });

  static PdaNoGpsReason fromMap(Map<String, dynamic> json) {
    return PdaNoGpsReason()
      ..idNoGpsReason = json['idNoGpsReason'] as int
      ..dsNoGpsReason = json['dsNoGpsReason'] as String
      ..mtOrder = json['mtOrder'] as int
      ..flAutomatic = json['flAutomatic'] == 1 ? true : false
      ..flPasswordRequired = json['flPasswordRequired'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idNoGpsReason': idNoGpsReason,
        'dsNoGpsReason': dsNoGpsReason,
        'mtOrder': mtOrder,
        'flAutomatic': flAutomatic,
        'flPasswordRequired': flPasswordRequired,
      };
}