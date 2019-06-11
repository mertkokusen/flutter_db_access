import 'package:database_access_layer/Entities/tsm_activity.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityRepositoryGenerated {
  Future<TsmActivity> getInstance(int idAgent);
  Future<bool> save(TsmActivity agent);
  Future<List<TsmActivity>> retrieveAll();
}

class _TsmActivityRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY";
  static const String _primaryKey = "ID_ACTIVITY";

  _TsmActivityRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivity> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivity.fromMap(map);
  }

  Future<List<TsmActivity>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivity.fromMap(f)).toList();
  }

  Future<TsmActivity> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivity.fromMap(f)).first : TsmActivity();
  }

  Future<Iterable<TsmActivity>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivity.fromMap(f));
  }
Future<bool> save(TsmActivity model) async {
    bool result;
    if (model.idActivity == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivity = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivity.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityRepository extends _TsmActivityRepositoryGenerated {
  factory TsmActivityRepository() = _TsmActivityRepositoryImpl;
}

class _TsmActivityRepositoryImpl extends _TsmActivityRepositoryGeneratedImpl
    implements TsmActivityRepository {
  static _TsmActivityRepositoryImpl _this;
  factory _TsmActivityRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityRepositoryImpl._();
}
*/
