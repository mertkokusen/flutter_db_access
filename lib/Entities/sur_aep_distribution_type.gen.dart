class SurAepDistributionType {
  int idAepDistributionType;
  String dsAepDistributionType;
  int mtSequence;
  
  SurAepDistributionType({
    this.idAepDistributionType,
    this.dsAepDistributionType,
    this.mtSequence,
  });

  static SurAepDistributionType fromMap(Map<String, dynamic> json) {
    return SurAepDistributionType()
      ..idAepDistributionType = json['idAepDistributionType'] as int
      ..dsAepDistributionType = json['dsAepDistributionType'] as String
      ..mtSequence = json['mtSequence'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepDistributionType': idAepDistributionType,
        'dsAepDistributionType': dsAepDistributionType,
        'mtSequence': mtSequence,
      };
}