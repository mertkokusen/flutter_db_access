class TsmActivityStatus {
  int idActivityStatus;
  String dsActivityStatus;
  
  TsmActivityStatus({
    this.idActivityStatus,
    this.dsActivityStatus,
  });

  static TsmActivityStatus fromMap(Map<String, dynamic> json) {
    return TsmActivityStatus()
      ..idActivityStatus = json['idActivityStatus'] as int
      ..dsActivityStatus = json['dsActivityStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityStatus': idActivityStatus,
        'dsActivityStatus': dsActivityStatus,
      };
}