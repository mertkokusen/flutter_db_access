import 'package:database_access_layer/Entities/sur_result.gen.dart';
import 'base_provider.dart';

abstract class _SurResultRepositoryGenerated {
  Future<SurResult> getInstance(int idAgent);
  Future<bool> save(SurResult agent);
  Future<List<SurResult>> retrieveAll();
}

class _SurResultRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT";
  static const String _primaryKey = "ID_RESULT";

  _SurResultRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResult> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResult.fromMap(map);
  }

  Future<List<SurResult>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResult.fromMap(f)).toList();
  }

  Future<SurResult> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResult.fromMap(f)).first : SurResult();
  }

  Future<Iterable<SurResult>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResult.fromMap(f));
  }
Future<bool> save(SurResult model) async {
    bool result;
    if (model.idResult == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResult = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResult.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultRepository extends _SurResultRepositoryGenerated {
  factory SurResultRepository() = _SurResultRepositoryImpl;
}

class _SurResultRepositoryImpl extends _SurResultRepositoryGeneratedImpl
    implements SurResultRepository {
  static _SurResultRepositoryImpl _this;
  factory _SurResultRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultRepositoryImpl._();
    }
    return _this;
  }
  _SurResultRepositoryImpl._();
}
*/
