import 'package:database_access_layer/Entities/cus_visit_type.gen.dart';
import 'base_provider.dart';

abstract class _CusVisitTypeRepositoryGenerated {
  Future<CusVisitType> getInstance(int idAgent);
  Future<bool> save(CusVisitType agent);
  Future<List<CusVisitType>> retrieveAll();
}

class _CusVisitTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusVisitTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_VISIT_TYPE";
  static const String _primaryKey = "ID_VISIT_TYPE";

  _CusVisitTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusVisitType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusVisitType.fromMap(map);
  }

  Future<List<CusVisitType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusVisitType.fromMap(f)).toList();
  }

  Future<CusVisitType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusVisitType.fromMap(f)).first : CusVisitType();
  }

  Future<Iterable<CusVisitType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusVisitType.fromMap(f));
  }
Future<bool> save(CusVisitType model) async {
    bool result;
    if (model.idVisitType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusVisitTypeRepository extends _CusVisitTypeRepositoryGenerated {
  factory CusVisitTypeRepository() = _CusVisitTypeRepositoryImpl;
}

class _CusVisitTypeRepositoryImpl extends _CusVisitTypeRepositoryGeneratedImpl
    implements CusVisitTypeRepository {
  static _CusVisitTypeRepositoryImpl _this;
  factory _CusVisitTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _CusVisitTypeRepositoryImpl._();
    }
    return _this;
  }
  _CusVisitTypeRepositoryImpl._();
}
*/
