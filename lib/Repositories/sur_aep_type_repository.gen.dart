import 'package:database_access_layer/Entities/sur_aep_type.gen.dart';
import 'base_provider.dart';

abstract class _SurAepTypeRepositoryGenerated {
  Future<SurAepType> getInstance(int idAgent);
  Future<bool> save(SurAepType agent);
  Future<List<SurAepType>> retrieveAll();
}

class _SurAepTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_TYPE";
  static const String _primaryKey = "ID_AEP_TYPE";

  _SurAepTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepType.fromMap(map);
  }

  Future<List<SurAepType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepType.fromMap(f)).toList();
  }

  Future<SurAepType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepType.fromMap(f)).first : SurAepType();
  }

  Future<Iterable<SurAepType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepType.fromMap(f));
  }
Future<bool> save(SurAepType model) async {
    bool result;
    if (model.idAepType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepTypeRepository extends _SurAepTypeRepositoryGenerated {
  factory SurAepTypeRepository() = _SurAepTypeRepositoryImpl;
}

class _SurAepTypeRepositoryImpl extends _SurAepTypeRepositoryGeneratedImpl
    implements SurAepTypeRepository {
  static _SurAepTypeRepositoryImpl _this;
  factory _SurAepTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepTypeRepositoryImpl._();
    }
    return _this;
  }
  _SurAepTypeRepositoryImpl._();
}
*/
