class TsmTask {
  int idTask;
  bool valid;
  DateTime dtInsert;
  int idUserInsert;
  String dsTask;
  String dsDescription;
  DateTime dtDeadline;
  bool flPhotoMandatory;
  int idTaskCategory;
  int idCustomer;
  String dsUniqueKey;
  String dsActivityDateUniqueKey;
  bool flWeb;
  bool vrFlSent;
  int idSalesOrgCreation;
  int idTaskExecutorType;
  
  TsmTask({
    this.idTask,
    this.valid,
    this.dtInsert,
    this.idUserInsert,
    this.dsTask,
    this.dsDescription,
    this.dtDeadline,
    this.flPhotoMandatory,
    this.idTaskCategory,
    this.idCustomer,
    this.dsUniqueKey,
    this.dsActivityDateUniqueKey,
    this.flWeb,
    this.vrFlSent,
    this.idSalesOrgCreation,
    this.idTaskExecutorType,
  });

  static TsmTask fromMap(Map<String, dynamic> json) {
    return TsmTask()
      ..idTask = json['idTask'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dtInsert = json['dtInsert'] == null ? null : DateTime.parse(json['dtInsert'] as String)
      ..idUserInsert = json['idUserInsert'] as int
      ..dsTask = json['dsTask'] as String
      ..dsDescription = json['dsDescription'] as String
      ..dtDeadline = json['dtDeadline'] == null ? null : DateTime.parse(json['dtDeadline'] as String)
      ..flPhotoMandatory = json['flPhotoMandatory'] == 1 ? true : false
      ..idTaskCategory = json['idTaskCategory'] as int
      ..idCustomer = json['idCustomer'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityDateUniqueKey = json['dsActivityDateUniqueKey'] as String
      ..flWeb = json['flWeb'] == 1 ? true : false
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
      ..idSalesOrgCreation = json['idSalesOrgCreation'] as int
      ..idTaskExecutorType = json['idTaskExecutorType'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTask': idTask,
        'valid': valid,
        'dtInsert': dtInsert?.toIso8601String(),
        'idUserInsert': idUserInsert,
        'dsTask': dsTask,
        'dsDescription': dsDescription,
        'dtDeadline': dtDeadline?.toIso8601String(),
        'flPhotoMandatory': flPhotoMandatory,
        'idTaskCategory': idTaskCategory,
        'idCustomer': idCustomer,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityDateUniqueKey': dsActivityDateUniqueKey,
        'flWeb': flWeb,
        'vrFlSent': vrFlSent,
        'idSalesOrgCreation': idSalesOrgCreation,
        'idTaskExecutorType': idTaskExecutorType,
      };
}