class MemAuditProblem {
  int idProblem;
  String dsProblem;
  int flAutomatic;
  
  MemAuditProblem({
    this.idProblem,
    this.dsProblem,
    this.flAutomatic,
  });

  static MemAuditProblem fromMap(Map<String, dynamic> json) {
    return MemAuditProblem()
      ..idProblem = json['idProblem'] as int
      ..dsProblem = json['dsProblem'] as String
      ..flAutomatic = json['flAutomatic'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idProblem': idProblem,
        'dsProblem': dsProblem,
        'flAutomatic': flAutomatic,
      };
}