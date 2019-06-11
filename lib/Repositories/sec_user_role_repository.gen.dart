import 'package:database_access_layer/Entities/sec_user_role.gen.dart';
import 'base_provider.dart';

abstract class _SecUserRoleRepositoryGenerated {
  Future<SecUserRole> getInstance(int idAgent);
  Future<bool> save(SecUserRole agent);
  Future<List<SecUserRole>> retrieveAll();
}

class _SecUserRoleRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SecUserRoleRepositoryGeneratedImpl _this;
  static const String _tableName = "SEC_USER_ROLE";
  static const String _primaryKey = "ID_USER_ROLE";

  _SecUserRoleRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SecUserRole> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SecUserRole.fromMap(map);
  }

  Future<List<SecUserRole>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SecUserRole.fromMap(f)).toList();
  }

  Future<SecUserRole> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SecUserRole.fromMap(f)).first : SecUserRole();
  }

  Future<Iterable<SecUserRole>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SecUserRole.fromMap(f));
  }
Future<bool> save(SecUserRole model) async {
    bool result;
    if (model.idUserRole == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idUserRole = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idUserRole.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SecUserRoleRepository extends _SecUserRoleRepositoryGenerated {
  factory SecUserRoleRepository() = _SecUserRoleRepositoryImpl;
}

class _SecUserRoleRepositoryImpl extends _SecUserRoleRepositoryGeneratedImpl
    implements SecUserRoleRepository {
  static _SecUserRoleRepositoryImpl _this;
  factory _SecUserRoleRepositoryImpl() {
    if (_this == null) {
      _this = new _SecUserRoleRepositoryImpl._();
    }
    return _this;
  }
  _SecUserRoleRepositoryImpl._();
}
*/
