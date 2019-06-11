class TsmTaskPhoto {
  int idTaskPhoto;
  bool valid;
  int idTask;
  String dsUniqueKey;
  bool vrFlSent;
  
  TsmTaskPhoto({
    this.idTaskPhoto,
    this.valid,
    this.idTask,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static TsmTaskPhoto fromMap(Map<String, dynamic> json) {
    return TsmTaskPhoto()
      ..idTaskPhoto = json['idTaskPhoto'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idTask = json['idTask'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskPhoto': idTaskPhoto,
        'valid': valid,
        'idTask': idTask,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}