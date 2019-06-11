import 'package:database_access_layer/Entities/sec_user.gen.dart';
import 'base_provider.dart';

abstract class _SecUserRepositoryGenerated {
  Future<SecUser> getInstance(int idAgent);
  Future<bool> save(SecUser agent);
  Future<List<SecUser>> retrieveAll();
}

class _SecUserRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SecUserRepositoryGeneratedImpl _this;
  static const String _tableName = "SEC_USER";
  static const String _primaryKey = "ID_USER";

  _SecUserRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SecUser> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SecUser.fromMap(map);
  }

  Future<List<SecUser>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SecUser.fromMap(f)).toList();
  }

  Future<SecUser> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SecUser.fromMap(f)).first : SecUser();
  }

  Future<Iterable<SecUser>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SecUser.fromMap(f));
  }
Future<bool> save(SecUser model) async {
    bool result;
    if (model.idUser == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idUser = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idUser.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SecUserRepository extends _SecUserRepositoryGenerated {
  factory SecUserRepository() = _SecUserRepositoryImpl;
}

class _SecUserRepositoryImpl extends _SecUserRepositoryGeneratedImpl
    implements SecUserRepository {
  static _SecUserRepositoryImpl _this;
  factory _SecUserRepositoryImpl() {
    if (_this == null) {
      _this = new _SecUserRepositoryImpl._();
    }
    return _this;
  }
  _SecUserRepositoryImpl._();
}
*/
