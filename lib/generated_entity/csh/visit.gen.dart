
import 'package:database_access_layer/entity/csh/visit.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class Visit extends VisitAbstract{
  int idVisit;
  int idCashRoute;
  int idSort;
  String dsVisitComment;
  String dsVisitHeader;
  String dsVisitAddress;
  int mtLatitude;
  int mtLongitude;
  int idVisitStatus;
  
  Visit({
    this.idVisit,
    this.idCashRoute,
    this.idSort,
    this.dsVisitComment,
    this.dsVisitHeader,
    this.dsVisitAddress,
    this.mtLatitude,
    this.mtLongitude,
    this.idVisitStatus,
  });

  static Visit fromMap(Map<String, dynamic> json) {
    return Visit()
      ..idVisit = json['idVisit'] as int
      ..idCashRoute = json['idCashRoute'] as int
      ..idSort = json['idSort'] as int
      ..dsVisitComment = json['dsVisitComment'] as String
      ..dsVisitHeader = json['dsVisitHeader'] as String
      ..dsVisitAddress = json['dsVisitAddress'] as String
      ..mtLatitude = json['mtLatitude'] as int
      ..mtLongitude = json['mtLongitude'] as int
      ..idVisitStatus = json['idVisitStatus'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idVisit': idVisit,
        'idCashRoute': idCashRoute,
        'idSort': idSort,
        'dsVisitComment': dsVisitComment,
        'dsVisitHeader': dsVisitHeader,
        'dsVisitAddress': dsVisitAddress,
        'mtLatitude': mtLatitude,
        'mtLongitude': mtLongitude,
        'idVisitStatus': idVisitStatus,
      };
}