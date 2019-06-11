class OrdGroupCodeTitle {
  int idGroupCodeTitle;
  int idDealer;
  String dsGroupCode1Title;
  String dsGroupCode2Title;
  String dsGroupCode3Title;
  String dsGroupCode4Title;
  String dsGroupCode5Title;
  String dsParameter;
  
  OrdGroupCodeTitle({
    this.idGroupCodeTitle,
    this.idDealer,
    this.dsGroupCode1Title,
    this.dsGroupCode2Title,
    this.dsGroupCode3Title,
    this.dsGroupCode4Title,
    this.dsGroupCode5Title,
    this.dsParameter,
  });

  static OrdGroupCodeTitle fromMap(Map<String, dynamic> json) {
    return OrdGroupCodeTitle()
      ..idGroupCodeTitle = json['idGroupCodeTitle'] as int
      ..idDealer = json['idDealer'] as int
      ..dsGroupCode1Title = json['dsGroupCode1Title'] as String
      ..dsGroupCode2Title = json['dsGroupCode2Title'] as String
      ..dsGroupCode3Title = json['dsGroupCode3Title'] as String
      ..dsGroupCode4Title = json['dsGroupCode4Title'] as String
      ..dsGroupCode5Title = json['dsGroupCode5Title'] as String
      ..dsParameter = json['dsParameter'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idGroupCodeTitle': idGroupCodeTitle,
        'idDealer': idDealer,
        'dsGroupCode1Title': dsGroupCode1Title,
        'dsGroupCode2Title': dsGroupCode2Title,
        'dsGroupCode3Title': dsGroupCode3Title,
        'dsGroupCode4Title': dsGroupCode4Title,
        'dsGroupCode5Title': dsGroupCode5Title,
        'dsParameter': dsParameter,
      };
}