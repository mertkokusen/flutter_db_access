class TsmTaskCustomer {
  int idTaskCustomer;
  bool valid;
  int idTask;
  int idCustomer;
  int idTaskExecutionStatus;
  int idUserCompleted;
  DateTime dtCompleted;
  int idUserApproved;
  DateTime dtApproved;
  String dsComment;
  int idTaskIncompletionReason;
  int idTaskApprovalStatus;
  String dsUniqueKey;
  bool flWeb;
  bool vrFlSent;
  
  TsmTaskCustomer({
    this.idTaskCustomer,
    this.valid,
    this.idTask,
    this.idCustomer,
    this.idTaskExecutionStatus,
    this.idUserCompleted,
    this.dtCompleted,
    this.idUserApproved,
    this.dtApproved,
    this.dsComment,
    this.idTaskIncompletionReason,
    this.idTaskApprovalStatus,
    this.dsUniqueKey,
    this.flWeb,
    this.vrFlSent,
  });

  static TsmTaskCustomer fromMap(Map<String, dynamic> json) {
    return TsmTaskCustomer()
      ..idTaskCustomer = json['idTaskCustomer'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idTask = json['idTask'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idTaskExecutionStatus = json['idTaskExecutionStatus'] as int
      ..idUserCompleted = json['idUserCompleted'] as int
      ..dtCompleted = json['dtCompleted'] == null ? null : DateTime.parse(json['dtCompleted'] as String)
      ..idUserApproved = json['idUserApproved'] as int
      ..dtApproved = json['dtApproved'] == null ? null : DateTime.parse(json['dtApproved'] as String)
      ..dsComment = json['dsComment'] as String
      ..idTaskIncompletionReason = json['idTaskIncompletionReason'] as int
      ..idTaskApprovalStatus = json['idTaskApprovalStatus'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..flWeb = json['flWeb'] == 1 ? true : false
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskCustomer': idTaskCustomer,
        'valid': valid,
        'idTask': idTask,
        'idCustomer': idCustomer,
        'idTaskExecutionStatus': idTaskExecutionStatus,
        'idUserCompleted': idUserCompleted,
        'dtCompleted': dtCompleted?.toIso8601String(),
        'idUserApproved': idUserApproved,
        'dtApproved': dtApproved?.toIso8601String(),
        'dsComment': dsComment,
        'idTaskIncompletionReason': idTaskIncompletionReason,
        'idTaskApprovalStatus': idTaskApprovalStatus,
        'dsUniqueKey': dsUniqueKey,
        'flWeb': flWeb,
        'vrFlSent': vrFlSent,
      };
}