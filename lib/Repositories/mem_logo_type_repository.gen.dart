import 'package:database_access_layer/Entities/mem_logo_type.gen.dart';
import 'base_provider.dart';

abstract class _MemLogoTypeRepositoryGenerated {
  Future<MemLogoType> getInstance(int idAgent);
  Future<bool> save(MemLogoType agent);
  Future<List<MemLogoType>> retrieveAll();
}

class _MemLogoTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemLogoTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_LOGO_TYPE";
  static const String _primaryKey = "ID_LOGO_TYPE";

  _MemLogoTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemLogoType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemLogoType.fromMap(map);
  }

  Future<List<MemLogoType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemLogoType.fromMap(f)).toList();
  }

  Future<MemLogoType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemLogoType.fromMap(f)).first : MemLogoType();
  }

  Future<Iterable<MemLogoType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemLogoType.fromMap(f));
  }
Future<bool> save(MemLogoType model) async {
    bool result;
    if (model.idLogoType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idLogoType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idLogoType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemLogoTypeRepository extends _MemLogoTypeRepositoryGenerated {
  factory MemLogoTypeRepository() = _MemLogoTypeRepositoryImpl;
}

class _MemLogoTypeRepositoryImpl extends _MemLogoTypeRepositoryGeneratedImpl
    implements MemLogoTypeRepository {
  static _MemLogoTypeRepositoryImpl _this;
  factory _MemLogoTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _MemLogoTypeRepositoryImpl._();
    }
    return _this;
  }
  _MemLogoTypeRepositoryImpl._();
}
*/
