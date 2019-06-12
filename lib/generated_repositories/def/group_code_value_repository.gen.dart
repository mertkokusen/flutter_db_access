
part of '../../repositories/def/group_code_value_repository.dart';

abstract class _GroupCodeValueRepositoryGenerated {
  Future<GroupCodeValue> getInstance(int idAgent);
  Future<List<GroupCodeValue>> retrieveAll();

 Future<bool> save(GroupCodeValue agent);
}
class _GroupCodeValueRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _GroupCodeValueRepositoryGeneratedImpl _this;
  static const String _tableName = "GROUP_CODE_VALUE";
  static const String _primaryKey = "ID_GROUP_CODE_VALUE";

  _GroupCodeValueRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<GroupCodeValue> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return GroupCodeValue.fromMap(map);
  }

  Future<List<GroupCodeValue>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => GroupCodeValue.fromMap(f)).toList();
  }

  Future<GroupCodeValue> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => GroupCodeValue.fromMap(f)).first : GroupCodeValue();
  }

  Future<Iterable<GroupCodeValue>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => GroupCodeValue.fromMap(f));
  }
Future<bool> save(GroupCodeValue model) async {
    bool result;
    if (model.idGroupCodeValue == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idGroupCodeValue = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idGroupCodeValue.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class GroupCodeValueRepository extends _GroupCodeValueRepositoryGenerated {
  factory GroupCodeValueRepository() = _GroupCodeValueRepositoryImpl;
}

class _GroupCodeValueRepositoryImpl extends _GroupCodeValueRepositoryGeneratedImpl
    implements GroupCodeValueRepository {
  static _GroupCodeValueRepositoryImpl _this;
  factory _GroupCodeValueRepositoryImpl() {
    if (_this == null) {
      _this = new _GroupCodeValueRepositoryImpl._();
    }
    return _this;
  }
  _GroupCodeValueRepositoryImpl._();
}
*/
