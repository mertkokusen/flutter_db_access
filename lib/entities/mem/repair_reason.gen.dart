class RepairReason {
  int idRepairReason;
  String dsRepairReason;
  
  RepairReason({
    this.idRepairReason,
    this.dsRepairReason,
  });

  static RepairReason fromMap(Map<String, dynamic> json) {
    return RepairReason()
      ..idRepairReason = json['idRepairReason'] as int
      ..dsRepairReason = json['dsRepairReason'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRepairReason': idRepairReason,
        'dsRepairReason': dsRepairReason,
      };
}