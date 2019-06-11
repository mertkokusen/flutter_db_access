import 'package:database_access_layer/Entities/sur_aep.gen.dart';
import 'base_provider.dart';

abstract class _SurAepRepositoryGenerated {
  Future<SurAep> getInstance(int idAgent);
  Future<bool> save(SurAep agent);
  Future<List<SurAep>> retrieveAll();
}

class _SurAepRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP";
  static const String _primaryKey = "ID_AEP";

  _SurAepRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAep> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAep.fromMap(map);
  }

  Future<List<SurAep>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAep.fromMap(f)).toList();
  }

  Future<SurAep> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAep.fromMap(f)).first : SurAep();
  }

  Future<Iterable<SurAep>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAep.fromMap(f));
  }
Future<bool> save(SurAep model) async {
    bool result;
    if (model.idAep == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAep = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAep.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepRepository extends _SurAepRepositoryGenerated {
  factory SurAepRepository() = _SurAepRepositoryImpl;
}

class _SurAepRepositoryImpl extends _SurAepRepositoryGeneratedImpl
    implements SurAepRepository {
  static _SurAepRepositoryImpl _this;
  factory _SurAepRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepRepositoryImpl._();
    }
    return _this;
  }
  _SurAepRepositoryImpl._();
}
*/
