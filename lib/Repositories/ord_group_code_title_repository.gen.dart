import 'package:database_access_layer/Entities/ord_group_code_title.gen.dart';
import 'base_provider.dart';

abstract class _OrdGroupCodeTitleRepositoryGenerated {
  Future<OrdGroupCodeTitle> getInstance(int idAgent);
  Future<bool> save(OrdGroupCodeTitle agent);
  Future<List<OrdGroupCodeTitle>> retrieveAll();
}

class _OrdGroupCodeTitleRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdGroupCodeTitleRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_GROUP_CODE_TITLE";
  static const String _primaryKey = "ID_GROUP_CODE_TITLE";

  _OrdGroupCodeTitleRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdGroupCodeTitle> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdGroupCodeTitle.fromMap(map);
  }

  Future<List<OrdGroupCodeTitle>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdGroupCodeTitle.fromMap(f)).toList();
  }

  Future<OrdGroupCodeTitle> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdGroupCodeTitle.fromMap(f)).first : OrdGroupCodeTitle();
  }

  Future<Iterable<OrdGroupCodeTitle>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdGroupCodeTitle.fromMap(f));
  }
Future<bool> save(OrdGroupCodeTitle model) async {
    bool result;
    if (model.idGroupCodeTitle == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idGroupCodeTitle = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idGroupCodeTitle.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrdGroupCodeTitleRepository extends _OrdGroupCodeTitleRepositoryGenerated {
  factory OrdGroupCodeTitleRepository() = _OrdGroupCodeTitleRepositoryImpl;
}

class _OrdGroupCodeTitleRepositoryImpl extends _OrdGroupCodeTitleRepositoryGeneratedImpl
    implements OrdGroupCodeTitleRepository {
  static _OrdGroupCodeTitleRepositoryImpl _this;
  factory _OrdGroupCodeTitleRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdGroupCodeTitleRepositoryImpl._();
    }
    return _this;
  }
  _OrdGroupCodeTitleRepositoryImpl._();
}
*/
