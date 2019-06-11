import 'package:database_access_layer/Entities/mem_request_header.gen.dart';
import 'base_provider.dart';

abstract class _MemRequestHeaderRepositoryGenerated {
  Future<MemRequestHeader> getInstance(int idAgent);
  Future<bool> save(MemRequestHeader agent);
  Future<List<MemRequestHeader>> retrieveAll();
}

class _MemRequestHeaderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemRequestHeaderRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_REQUEST_HEADER";
  static const String _primaryKey = "ID_REQUEST_HEADER";

  _MemRequestHeaderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemRequestHeader> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemRequestHeader.fromMap(map);
  }

  Future<List<MemRequestHeader>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemRequestHeader.fromMap(f)).toList();
  }

  Future<MemRequestHeader> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemRequestHeader.fromMap(f)).first : MemRequestHeader();
  }

  Future<Iterable<MemRequestHeader>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemRequestHeader.fromMap(f));
  }
Future<bool> save(MemRequestHeader model) async {
    bool result;
    if (model.idRequestHeader == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRequestHeader = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRequestHeader.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemRequestHeaderRepository extends _MemRequestHeaderRepositoryGenerated {
  factory MemRequestHeaderRepository() = _MemRequestHeaderRepositoryImpl;
}

class _MemRequestHeaderRepositoryImpl extends _MemRequestHeaderRepositoryGeneratedImpl
    implements MemRequestHeaderRepository {
  static _MemRequestHeaderRepositoryImpl _this;
  factory _MemRequestHeaderRepositoryImpl() {
    if (_this == null) {
      _this = new _MemRequestHeaderRepositoryImpl._();
    }
    return _this;
  }
  _MemRequestHeaderRepositoryImpl._();
}
*/
