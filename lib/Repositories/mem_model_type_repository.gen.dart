import 'package:database_access_layer/Entities/mem_model_type.gen.dart';
import 'base_provider.dart';

abstract class _MemModelTypeRepositoryGenerated {
  Future<MemModelType> getInstance(int idAgent);
  Future<bool> save(MemModelType agent);
  Future<List<MemModelType>> retrieveAll();
}

class _MemModelTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemModelTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_MODEL_TYPE";
  static const String _primaryKey = "ID_MODEL_TYPE";

  _MemModelTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemModelType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemModelType.fromMap(map);
  }

  Future<List<MemModelType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemModelType.fromMap(f)).toList();
  }

  Future<MemModelType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemModelType.fromMap(f)).first : MemModelType();
  }

  Future<Iterable<MemModelType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemModelType.fromMap(f));
  }
Future<bool> save(MemModelType model) async {
    bool result;
    if (model.idModelType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idModelType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idModelType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemModelTypeRepository extends _MemModelTypeRepositoryGenerated {
  factory MemModelTypeRepository() = _MemModelTypeRepositoryImpl;
}

class _MemModelTypeRepositoryImpl extends _MemModelTypeRepositoryGeneratedImpl
    implements MemModelTypeRepository {
  static _MemModelTypeRepositoryImpl _this;
  factory _MemModelTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _MemModelTypeRepositoryImpl._();
    }
    return _this;
  }
  _MemModelTypeRepositoryImpl._();
}
*/
