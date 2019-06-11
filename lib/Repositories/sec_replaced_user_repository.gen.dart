import 'package:database_access_layer/Entities/sec_replaced_user.gen.dart';
import 'base_provider.dart';

abstract class _SecReplacedUserRepositoryGenerated {
  Future<SecReplacedUser> getInstance(int idAgent);
  Future<bool> save(SecReplacedUser agent);
  Future<List<SecReplacedUser>> retrieveAll();
}

class _SecReplacedUserRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SecReplacedUserRepositoryGeneratedImpl _this;
  static const String _tableName = "SEC_REPLACED_USER";
  static const String _primaryKey = "ID_REPLACED_USER";

  _SecReplacedUserRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SecReplacedUser> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SecReplacedUser.fromMap(map);
  }

  Future<List<SecReplacedUser>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SecReplacedUser.fromMap(f)).toList();
  }

  Future<SecReplacedUser> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SecReplacedUser.fromMap(f)).first : SecReplacedUser();
  }

  Future<Iterable<SecReplacedUser>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SecReplacedUser.fromMap(f));
  }
Future<bool> save(SecReplacedUser model) async {
    bool result;
    if (model.idReplacedUser == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idReplacedUser = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idReplacedUser.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SecReplacedUserRepository extends _SecReplacedUserRepositoryGenerated {
  factory SecReplacedUserRepository() = _SecReplacedUserRepositoryImpl;
}

class _SecReplacedUserRepositoryImpl extends _SecReplacedUserRepositoryGeneratedImpl
    implements SecReplacedUserRepository {
  static _SecReplacedUserRepositoryImpl _this;
  factory _SecReplacedUserRepositoryImpl() {
    if (_this == null) {
      _this = new _SecReplacedUserRepositoryImpl._();
    }
    return _this;
  }
  _SecReplacedUserRepositoryImpl._();
}
*/
