class SurAepAssortmentMatrix {
  int idAepAssortmentMatrix;
  int idAep;
  int idAssortmentList;
  
  SurAepAssortmentMatrix({
    this.idAepAssortmentMatrix,
    this.idAep,
    this.idAssortmentList,
  });

  static SurAepAssortmentMatrix fromMap(Map<String, dynamic> json) {
    return SurAepAssortmentMatrix()
      ..idAepAssortmentMatrix = json['idAepAssortmentMatrix'] as int
      ..idAep = json['idAep'] as int
      ..idAssortmentList = json['idAssortmentList'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepAssortmentMatrix': idAepAssortmentMatrix,
        'idAep': idAep,
        'idAssortmentList': idAssortmentList,
      };
}