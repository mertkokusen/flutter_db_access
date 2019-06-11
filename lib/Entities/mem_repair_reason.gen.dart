class MemRepairReason {
  int idRepairReason;
  String dsRepairReason;
  
  MemRepairReason({
    this.idRepairReason,
    this.dsRepairReason,
  });

  static MemRepairReason fromMap(Map<String, dynamic> json) {
    return MemRepairReason()
      ..idRepairReason = json['idRepairReason'] as int
      ..dsRepairReason = json['dsRepairReason'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRepairReason': idRepairReason,
        'dsRepairReason': dsRepairReason,
      };
}