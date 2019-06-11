class TsmTaskExecutorType {
  int idTaskExecutorType;
  String dsTaskExecutorType;
  bool flActive;
  bool flDefault;
  
  TsmTaskExecutorType({
    this.idTaskExecutorType,
    this.dsTaskExecutorType,
    this.flActive,
    this.flDefault,
  });

  static TsmTaskExecutorType fromMap(Map<String, dynamic> json) {
    return TsmTaskExecutorType()
      ..idTaskExecutorType = json['idTaskExecutorType'] as int
      ..dsTaskExecutorType = json['dsTaskExecutorType'] as String
      ..flActive = json['flActive'] == 1 ? true : false
      ..flDefault = json['flDefault'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskExecutorType': idTaskExecutorType,
        'dsTaskExecutorType': dsTaskExecutorType,
        'flActive': flActive,
        'flDefault': flDefault,
      };
}