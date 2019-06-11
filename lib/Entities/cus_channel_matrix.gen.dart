class CusChannelMatrix {
  int idChannelMatrix;
  int idChannel1;
  int idChannel2;
  int idChannel3;
  int idChannel4;
  
  CusChannelMatrix({
    this.idChannelMatrix,
    this.idChannel1,
    this.idChannel2,
    this.idChannel3,
    this.idChannel4,
  });

  static CusChannelMatrix fromMap(Map<String, dynamic> json) {
    return CusChannelMatrix()
      ..idChannelMatrix = json['idChannelMatrix'] as int
      ..idChannel1 = json['idChannel1'] as int
      ..idChannel2 = json['idChannel2'] as int
      ..idChannel3 = json['idChannel3'] as int
      ..idChannel4 = json['idChannel4'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idChannelMatrix': idChannelMatrix,
        'idChannel1': idChannel1,
        'idChannel2': idChannel2,
        'idChannel3': idChannel3,
        'idChannel4': idChannel4,
      };
}