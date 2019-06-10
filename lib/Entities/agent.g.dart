// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agent _$AgentFromJson(Map<String, dynamic> json) {
  return Agent()
    ..idAgent = json['idAgent'] as int
    ..dsAgent = json['dsAgent'] as String
    ..idUser = json['idUser'] as int
    ..idDealer = json['idDealer'] as int
    ..idRoute = json['idRoute'] as int
    ..idSalesOrg = json['idSalesOrg'] as int
    ..idVisitPlan = json['idVisitPlan'] as int
    ..dsParameter = json['dsParameter'] as String
    ..flDayFinished = json['flDayFinished'] as bool
    ..dtLastVisitListDay = json['dtLastVisitListDay'] == null
        ? null
        : DateTime.parse(json['dtLastVisitListDay'] as String);
}

Map<String, dynamic> _$AgentToJson(Agent instance) => <String, dynamic>{
      'idAgent': instance.idAgent,
      'dsAgent': instance.dsAgent,
      'idUser': instance.idUser,
      'idDealer': instance.idDealer,
      'idRoute': instance.idRoute,
      'idSalesOrg': instance.idSalesOrg,
      'idVisitPlan': instance.idVisitPlan,
      'dsParameter': instance.dsParameter,
      'flDayFinished': instance.flDayFinished,
      'dtLastVisitListDay': instance.dtLastVisitListDay?.toIso8601String()
    };
