
part of '../../repositories/mem/model_repository.dart';

abstract class _ModelRepositoryGenerated {
  Future<Model> getInstance(int idAgent);
  Future<List<Model>> retrieveAll();

 Future<bool> save(Model agent);
}
class _ModelRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _ModelRepositoryGeneratedImpl _this;
  static const String _tableName = "MODEL";
  static const String _primaryKey = "ID_MODEL";

  _ModelRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Model> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Model.fromMap(map);
  }

  Future<List<Model>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Model.fromMap(f)).toList();
  }

  Future<Model> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Model.fromMap(f)).first : Model();
  }

  Future<Iterable<Model>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Model.fromMap(f));
  }
Future<bool> save(Model model) async {
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
abstract class ModelRepository extends _ModelRepositoryGenerated {
  factory ModelRepository() = _ModelRepositoryImpl;
}

class _ModelRepositoryImpl extends _ModelRepositoryGeneratedImpl
    implements ModelRepository {
  static _ModelRepositoryImpl _this;
  factory _ModelRepositoryImpl() {
    if (_this == null) {
      _this = new _ModelRepositoryImpl._();
    }
    return _this;
  }
  _ModelRepositoryImpl._();
}
*/
