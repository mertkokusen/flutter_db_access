import 'package:database_access_layer/Entities/sec_user_right.gen.dart';
import 'base_provider.dart';

abstract class _SecUserRightRepositoryGenerated {
  Future<SecUserRight> getInstance(int idAgent);
  Future<bool> save(SecUserRight agent);
  Future<List<SecUserRight>> retrieveAll();
}

class _SecUserRightRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SecUserRightRepositoryGeneratedImpl _this;
  static const String _tableName = "SEC_USER_RIGHT";
  static const String _primaryKey = "ID_USER_RIGHT";

  _SecUserRightRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SecUserRight> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SecUserRight.fromMap(map);
  }

  Future<List<SecUserRight>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SecUserRight.fromMap(f)).toList();
  }

  Future<SecUserRight> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SecUserRight.fromMap(f)).first : SecUserRight();
  }

  Future<Iterable<SecUserRight>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SecUserRight.fromMap(f));
  }
Future<bool> save(SecUserRight model) async {
    bool result;
    if (model.idUserRight == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idUserRight = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idUserRight.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SecUserRightRepository extends _SecUserRightRepositoryGenerated {
  factory SecUserRightRepository() = _SecUserRightRepositoryImpl;
}

class _SecUserRightRepositoryImpl extends _SecUserRightRepositoryGeneratedImpl
    implements SecUserRightRepository {
  static _SecUserRightRepositoryImpl _this;
  factory _SecUserRightRepositoryImpl() {
    if (_this == null) {
      _this = new _SecUserRightRepositoryImpl._();
    }
    return _this;
  }
  _SecUserRightRepositoryImpl._();
}
*/
