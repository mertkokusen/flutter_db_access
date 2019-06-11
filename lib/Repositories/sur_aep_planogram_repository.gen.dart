import 'package:database_access_layer/Entities/sur_aep_planogram.gen.dart';
import 'base_provider.dart';

abstract class _SurAepPlanogramRepositoryGenerated {
  Future<SurAepPlanogram> getInstance(int idAgent);
  Future<bool> save(SurAepPlanogram agent);
  Future<List<SurAepPlanogram>> retrieveAll();
}

class _SurAepPlanogramRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepPlanogramRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_PLANOGRAM";
  static const String _primaryKey = "ID_AEP_PLANOGRAM";

  _SurAepPlanogramRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepPlanogram> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepPlanogram.fromMap(map);
  }

  Future<List<SurAepPlanogram>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepPlanogram.fromMap(f)).toList();
  }

  Future<SurAepPlanogram> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepPlanogram.fromMap(f)).first : SurAepPlanogram();
  }

  Future<Iterable<SurAepPlanogram>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepPlanogram.fromMap(f));
  }
Future<bool> save(SurAepPlanogram model) async {
    bool result;
    if (model.idAepPlanogram == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepPlanogram = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepPlanogram.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepPlanogramRepository extends _SurAepPlanogramRepositoryGenerated {
  factory SurAepPlanogramRepository() = _SurAepPlanogramRepositoryImpl;
}

class _SurAepPlanogramRepositoryImpl extends _SurAepPlanogramRepositoryGeneratedImpl
    implements SurAepPlanogramRepository {
  static _SurAepPlanogramRepositoryImpl _this;
  factory _SurAepPlanogramRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepPlanogramRepositoryImpl._();
    }
    return _this;
  }
  _SurAepPlanogramRepositoryImpl._();
}
*/
