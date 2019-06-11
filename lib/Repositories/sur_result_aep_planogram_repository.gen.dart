import 'package:database_access_layer/Entities/sur_result_aep_planogram.gen.dart';
import 'base_provider.dart';

abstract class _SurResultAepPlanogramRepositoryGenerated {
  Future<SurResultAepPlanogram> getInstance(int idAgent);
  Future<bool> save(SurResultAepPlanogram agent);
  Future<List<SurResultAepPlanogram>> retrieveAll();
}

class _SurResultAepPlanogramRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultAepPlanogramRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_AEP_PLANOGRAM";
  static const String _primaryKey = "ID_RESULT_AEP_PLANOGRAM";

  _SurResultAepPlanogramRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultAepPlanogram> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultAepPlanogram.fromMap(map);
  }

  Future<List<SurResultAepPlanogram>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultAepPlanogram.fromMap(f)).toList();
  }

  Future<SurResultAepPlanogram> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultAepPlanogram.fromMap(f)).first : SurResultAepPlanogram();
  }

  Future<Iterable<SurResultAepPlanogram>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultAepPlanogram.fromMap(f));
  }
Future<bool> save(SurResultAepPlanogram model) async {
    bool result;
    if (model.idResultAepPlanogram == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultAepPlanogram = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultAepPlanogram.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultAepPlanogramRepository extends _SurResultAepPlanogramRepositoryGenerated {
  factory SurResultAepPlanogramRepository() = _SurResultAepPlanogramRepositoryImpl;
}

class _SurResultAepPlanogramRepositoryImpl extends _SurResultAepPlanogramRepositoryGeneratedImpl
    implements SurResultAepPlanogramRepository {
  static _SurResultAepPlanogramRepositoryImpl _this;
  factory _SurResultAepPlanogramRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultAepPlanogramRepositoryImpl._();
    }
    return _this;
  }
  _SurResultAepPlanogramRepositoryImpl._();
}
*/
