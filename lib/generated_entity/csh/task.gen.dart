
import 'package:database_access_layer/entity/csh/task.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class Task extends TaskAbstract{
  int idCashTask;
  int idVisit;
  int idTaskSort;
  String dsTaskVid;
  String dsErpTask;
  int mtTaskAmount;
  String dsTaskNote;
  int idTaskStatus;
  
  Task({
    this.idCashTask,
    this.idVisit,
    this.idTaskSort,
    this.dsTaskVid,
    this.dsErpTask,
    this.mtTaskAmount,
    this.dsTaskNote,
    this.idTaskStatus,
  });

  static Task fromMap(Map<String, dynamic> json) {
    return Task()
      ..idCashTask = json['idCashTask'] as int
      ..idVisit = json['idVisit'] as int
      ..idTaskSort = json['idTaskSort'] as int
      ..dsTaskVid = json['dsTaskVid'] as String
      ..dsErpTask = json['dsErpTask'] as String
      ..mtTaskAmount = json['mtTaskAmount'] as int
      ..dsTaskNote = json['dsTaskNote'] as String
      ..idTaskStatus = json['idTaskStatus'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCashTask': idCashTask,
        'idVisit': idVisit,
        'idTaskSort': idTaskSort,
        'dsTaskVid': dsTaskVid,
        'dsErpTask': dsErpTask,
        'mtTaskAmount': mtTaskAmount,
        'dsTaskNote': dsTaskNote,
        'idTaskStatus': idTaskStatus,
      };
}