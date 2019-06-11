import 'package:database_access_layer/Entities/mem_model.gen.dart';
import 'base_provider.dart';

abstract class _MemModelRepositoryGenerated {
  Future<MemModel> getInstance(int idAgent);
  Future<bool> save(MemModel agent);
  Future<List<MemModel>> retrieveAll();
}

class _MemModelRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemModelRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_MODEL";
  static const String _primaryKey = "ID_MODEL";

  _MemModelRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemModel> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemModel.fromMap(map);
  }

  Future<List<MemModel>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemModel.fromMap(f)).toList();
  }

  Future<MemModel> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemModel.fromMap(f)).first : MemModel();
  }

  Future<Iterable<MemModel>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemModel.fromMap(f));
  }
Future<bool> save(MemModel model) async {
    bool result;
    if (model.idModel == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idModel = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idModel.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemModelRepository extends _MemModelRepositoryGenerated {
  factory MemModelRepository() = _MemModelRepositoryImpl;
}

class _MemModelRepositoryImpl extends _MemModelRepositoryGeneratedImpl
    implements MemModelRepository {
  static _MemModelRepositoryImpl _this;
  factory _MemModelRepositoryImpl() {
    if (_this == null) {
      _this = new _MemModelRepositoryImpl._();
    }
    return _this;
  }
  _MemModelRepositoryImpl._();
}
*/
