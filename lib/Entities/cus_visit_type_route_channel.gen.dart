class CusVisitTypeRouteChannel {
  int idVisitTypeRouteChannel;
  int idVisitType;
  int idRouteChannelType;
  bool flDefault;
  int idFaceCall;
  
  CusVisitTypeRouteChannel({
    this.idVisitTypeRouteChannel,
    this.idVisitType,
    this.idRouteChannelType,
    this.flDefault,
    this.idFaceCall,
  });

  static CusVisitTypeRouteChannel fromMap(Map<String, dynamic> json) {
    return CusVisitTypeRouteChannel()
      ..idVisitTypeRouteChannel = json['idVisitTypeRouteChannel'] as int
      ..idVisitType = json['idVisitType'] as int
      ..idRouteChannelType = json['idRouteChannelType'] as int
      ..flDefault = json['flDefault'] == 1 ? true : false
      ..idFaceCall = json['idFaceCall'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisitTypeRouteChannel': idVisitTypeRouteChannel,
        'idVisitType': idVisitType,
        'idRouteChannelType': idRouteChannelType,
        'flDefault': flDefault,
        'idFaceCall': idFaceCall,
      };
}