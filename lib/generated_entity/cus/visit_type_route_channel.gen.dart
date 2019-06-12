
import 'package:database_access_layer/entity/cus/visit_type_route_channel.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class VisitTypeRouteChannel extends VisitTypeRouteChannelAbstract{
  int idVisitTypeRouteChannel;
  int idVisitType;
  int idRouteChannelType;
  bool flDefault;
  int idFaceCall;
  
  VisitTypeRouteChannel({
    this.idVisitTypeRouteChannel,
    this.idVisitType,
    this.idRouteChannelType,
    this.flDefault,
    this.idFaceCall,
  });

  static VisitTypeRouteChannel fromMap(Map<String, dynamic> json) {
    return VisitTypeRouteChannel()
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