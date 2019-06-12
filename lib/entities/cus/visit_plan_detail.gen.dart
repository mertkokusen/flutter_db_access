class VisitPlanDetail {
  int idVisitPlanDetail;
  int idVisitPlan;
  int idCustomer;
  int idVisitType;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  int mtSeqW1D1;
  int mtSeqW1D2;
  int mtSeqW1D3;
  int mtSeqW1D4;
  int mtSeqW1D5;
  int mtSeqW1D6;
  int mtSeqW1D7;
  int mtSeqW2D1;
  int mtSeqW2D2;
  int mtSeqW2D3;
  int mtSeqW2D4;
  int mtSeqW2D5;
  int mtSeqW2D6;
  int mtSeqW2D7;
  int mtSeqW3D1;
  int mtSeqW3D2;
  int mtSeqW3D3;
  int mtSeqW3D4;
  int mtSeqW3D5;
  int mtSeqW3D6;
  int mtSeqW3D7;
  int mtSeqW4D1;
  int mtSeqW4D2;
  int mtSeqW4D3;
  int mtSeqW4D4;
  int mtSeqW4D5;
  int mtSeqW4D6;
  int mtSeqW4D7;
  int mtPeriodFreq;
  String dsDays;
  
  VisitPlanDetail({
    this.idVisitPlanDetail,
    this.idVisitPlan,
    this.idCustomer,
    this.idVisitType,
    this.dtValidFrom,
    this.dtValidTo,
    this.mtSeqW1D1,
    this.mtSeqW1D2,
    this.mtSeqW1D3,
    this.mtSeqW1D4,
    this.mtSeqW1D5,
    this.mtSeqW1D6,
    this.mtSeqW1D7,
    this.mtSeqW2D1,
    this.mtSeqW2D2,
    this.mtSeqW2D3,
    this.mtSeqW2D4,
    this.mtSeqW2D5,
    this.mtSeqW2D6,
    this.mtSeqW2D7,
    this.mtSeqW3D1,
    this.mtSeqW3D2,
    this.mtSeqW3D3,
    this.mtSeqW3D4,
    this.mtSeqW3D5,
    this.mtSeqW3D6,
    this.mtSeqW3D7,
    this.mtSeqW4D1,
    this.mtSeqW4D2,
    this.mtSeqW4D3,
    this.mtSeqW4D4,
    this.mtSeqW4D5,
    this.mtSeqW4D6,
    this.mtSeqW4D7,
    this.mtPeriodFreq,
    this.dsDays,
  });

  static VisitPlanDetail fromMap(Map<String, dynamic> json) {
    return VisitPlanDetail()
      ..idVisitPlanDetail = json['idVisitPlanDetail'] as int
      ..idVisitPlan = json['idVisitPlan'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idVisitType = json['idVisitType'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
      ..mtSeqW1D1 = json['mtSeqW1D1'] as int
      ..mtSeqW1D2 = json['mtSeqW1D2'] as int
      ..mtSeqW1D3 = json['mtSeqW1D3'] as int
      ..mtSeqW1D4 = json['mtSeqW1D4'] as int
      ..mtSeqW1D5 = json['mtSeqW1D5'] as int
      ..mtSeqW1D6 = json['mtSeqW1D6'] as int
      ..mtSeqW1D7 = json['mtSeqW1D7'] as int
      ..mtSeqW2D1 = json['mtSeqW2D1'] as int
      ..mtSeqW2D2 = json['mtSeqW2D2'] as int
      ..mtSeqW2D3 = json['mtSeqW2D3'] as int
      ..mtSeqW2D4 = json['mtSeqW2D4'] as int
      ..mtSeqW2D5 = json['mtSeqW2D5'] as int
      ..mtSeqW2D6 = json['mtSeqW2D6'] as int
      ..mtSeqW2D7 = json['mtSeqW2D7'] as int
      ..mtSeqW3D1 = json['mtSeqW3D1'] as int
      ..mtSeqW3D2 = json['mtSeqW3D2'] as int
      ..mtSeqW3D3 = json['mtSeqW3D3'] as int
      ..mtSeqW3D4 = json['mtSeqW3D4'] as int
      ..mtSeqW3D5 = json['mtSeqW3D5'] as int
      ..mtSeqW3D6 = json['mtSeqW3D6'] as int
      ..mtSeqW3D7 = json['mtSeqW3D7'] as int
      ..mtSeqW4D1 = json['mtSeqW4D1'] as int
      ..mtSeqW4D2 = json['mtSeqW4D2'] as int
      ..mtSeqW4D3 = json['mtSeqW4D3'] as int
      ..mtSeqW4D4 = json['mtSeqW4D4'] as int
      ..mtSeqW4D5 = json['mtSeqW4D5'] as int
      ..mtSeqW4D6 = json['mtSeqW4D6'] as int
      ..mtSeqW4D7 = json['mtSeqW4D7'] as int
      ..mtPeriodFreq = json['mtPeriodFreq'] as int
      ..dsDays = json['dsDays'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitPlanDetail': idVisitPlanDetail,
        'idVisitPlan': idVisitPlan,
        'idCustomer': idCustomer,
        'idVisitType': idVisitType,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
        'mtSeqW1D1': mtSeqW1D1,
        'mtSeqW1D2': mtSeqW1D2,
        'mtSeqW1D3': mtSeqW1D3,
        'mtSeqW1D4': mtSeqW1D4,
        'mtSeqW1D5': mtSeqW1D5,
        'mtSeqW1D6': mtSeqW1D6,
        'mtSeqW1D7': mtSeqW1D7,
        'mtSeqW2D1': mtSeqW2D1,
        'mtSeqW2D2': mtSeqW2D2,
        'mtSeqW2D3': mtSeqW2D3,
        'mtSeqW2D4': mtSeqW2D4,
        'mtSeqW2D5': mtSeqW2D5,
        'mtSeqW2D6': mtSeqW2D6,
        'mtSeqW2D7': mtSeqW2D7,
        'mtSeqW3D1': mtSeqW3D1,
        'mtSeqW3D2': mtSeqW3D2,
        'mtSeqW3D3': mtSeqW3D3,
        'mtSeqW3D4': mtSeqW3D4,
        'mtSeqW3D5': mtSeqW3D5,
        'mtSeqW3D6': mtSeqW3D6,
        'mtSeqW3D7': mtSeqW3D7,
        'mtSeqW4D1': mtSeqW4D1,
        'mtSeqW4D2': mtSeqW4D2,
        'mtSeqW4D3': mtSeqW4D3,
        'mtSeqW4D4': mtSeqW4D4,
        'mtSeqW4D5': mtSeqW4D5,
        'mtSeqW4D6': mtSeqW4D6,
        'mtSeqW4D7': mtSeqW4D7,
        'mtPeriodFreq': mtPeriodFreq,
        'dsDays': dsDays,
      };
}