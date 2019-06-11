class TsmActivityMember {
  int idActivityMember;
  int idActivity;
  int idUser;
  String dsComment;
  String dsUniqueKey;
  String dsActivityUniqueKey;
  bool vrFlSent;
  bool flFromWeb;
  bool valid;
  
  TsmActivityMember({
    this.idActivityMember,
    this.idActivity,
    this.idUser,
    this.dsComment,
    this.dsUniqueKey,
    this.dsActivityUniqueKey,
    this.vrFlSent,
    this.flFromWeb,
    this.valid,
  });

  static TsmActivityMember fromMap(Map<String, dynamic> json) {
    return TsmActivityMember()
      ..idActivityMember = json['idActivityMember'] as int
      ..idActivity = json['idActivity'] as int
      ..idUser = json['idUser'] as int
      ..dsComment = json['dsComment'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityUniqueKey = json['dsActivityUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..flFromWeb = json['flFromWeb'] == 1 ? true : false
      ..valid = json['valid'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityMember': idActivityMember,
        'idActivity': idActivity,
        'idUser': idUser,
        'dsComment': dsComment,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityUniqueKey': dsActivityUniqueKey,
        'vrFlSent': vrFlSent,
        'flFromWeb': flFromWeb,
        'valid': valid,
      };
}