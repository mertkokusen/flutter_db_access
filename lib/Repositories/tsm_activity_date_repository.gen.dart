import 'package:database_access_layer/Entities/tsm_activity_date.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityDateRepositoryGenerated {
  Future<TsmActivityDate> getInstance(int idAgent);
  Future<bool> save(TsmActivityDate agent);
  Future<List<TsmActivityDate>> retrieveAll();
}

class _TsmActivityDateRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityDateRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_DATE";
  static const String _primaryKey = "ID_ACTIVITY_DATE";

  _TsmActivityDateRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivityDate> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivityDate.fromMap(map);
  }

  Future<List<TsmActivityDate>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivityDate.fromMap(f)).toList();
  }

  Future<TsmActivityDate> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivityDate.fromMap(f)).first : TsmActivityDate();
  }

  Future<Iterable<TsmActivityDate>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivityDate.fromMap(f));
  }
Future<bool> save(TsmActivityDate model) async {
    bool result;
    if (model.idActivityDate == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivityDate = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivityDate.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityDateRepository extends _TsmActivityDateRepositoryGenerated {
  factory TsmActivityDateRepository() = _TsmActivityDateRepositoryImpl;
}

class _TsmActivityDateRepositoryImpl extends _TsmActivityDateRepositoryGeneratedImpl
    implements TsmActivityDateRepository {
  static _TsmActivityDateRepositoryImpl _this;
  factory _TsmActivityDateRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityDateRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityDateRepositoryImpl._();
}
*/
