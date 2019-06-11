import 'package:database_access_layer/Entities/sur_result_aep.gen.dart';
import 'base_provider.dart';

abstract class _SurResultAepRepositoryGenerated {
  Future<SurResultAep> getInstance(int idAgent);
  Future<bool> save(SurResultAep agent);
  Future<List<SurResultAep>> retrieveAll();
}

class _SurResultAepRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultAepRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_AEP";
  static const String _primaryKey = "ID_RESULT_AEP";

  _SurResultAepRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultAep> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultAep.fromMap(map);
  }

  Future<List<SurResultAep>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultAep.fromMap(f)).toList();
  }

  Future<SurResultAep> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultAep.fromMap(f)).first : SurResultAep();
  }

  Future<Iterable<SurResultAep>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultAep.fromMap(f));
  }
Future<bool> save(SurResultAep model) async {
    bool result;
    if (model.idResultAep == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultAep = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultAep.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultAepRepository extends _SurResultAepRepositoryGenerated {
  factory SurResultAepRepository() = _SurResultAepRepositoryImpl;
}

class _SurResultAepRepositoryImpl extends _SurResultAepRepositoryGeneratedImpl
    implements SurResultAepRepository {
  static _SurResultAepRepositoryImpl _this;
  factory _SurResultAepRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultAepRepositoryImpl._();
    }
    return _this;
  }
  _SurResultAepRepositoryImpl._();
}
*/
