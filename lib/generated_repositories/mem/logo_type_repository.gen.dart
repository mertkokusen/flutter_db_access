
part of '../../repositories/mem/logo_type_repository.dart';

abstract class _LogoTypeRepositoryGenerated {
  Future<LogoType> getInstance(int idAgent);
  Future<List<LogoType>> retrieveAll();

 Future<bool> save(LogoType agent);
}
class _LogoTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _LogoTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "LOGO_TYPE";
  static const String _primaryKey = "ID_LOGO_TYPE";

  _LogoTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<LogoType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return LogoType.fromMap(map);
  }

  Future<List<LogoType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => LogoType.fromMap(f)).toList();
  }

  Future<LogoType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => LogoType.fromMap(f)).first : LogoType();
  }

  Future<Iterable<LogoType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => LogoType.fromMap(f));
  }
Future<bool> save(LogoType model) async {
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
abstract class LogoTypeRepository extends _LogoTypeRepositoryGenerated {
  factory LogoTypeRepository() = _LogoTypeRepositoryImpl;
}

class _LogoTypeRepositoryImpl extends _LogoTypeRepositoryGeneratedImpl
    implements LogoTypeRepository {
  static _LogoTypeRepositoryImpl _this;
  factory _LogoTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _LogoTypeRepositoryImpl._();
    }
    return _this;
  }
  _LogoTypeRepositoryImpl._();
}
*/
