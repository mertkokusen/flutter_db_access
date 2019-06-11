import 'package:database_access_layer/Entities/tsm_activity_status.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityStatusRepositoryGenerated {
  Future<TsmActivityStatus> getInstance(int idAgent);
  Future<bool> save(TsmActivityStatus agent);
  Future<List<TsmActivityStatus>> retrieveAll();
}

class _TsmActivityStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_STATUS";
  static const String _primaryKey = "ID_ACTIVITY_STATUS";

  _TsmActivityStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivityStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivityStatus.fromMap(map);
  }

  Future<List<TsmActivityStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivityStatus.fromMap(f)).toList();
  }

  Future<TsmActivityStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivityStatus.fromMap(f)).first : TsmActivityStatus();
  }

  Future<Iterable<TsmActivityStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivityStatus.fromMap(f));
  }
Future<bool> save(TsmActivityStatus model) async {
    bool result;
    if (model.idActivityStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivityStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivityStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityStatusRepository extends _TsmActivityStatusRepositoryGenerated {
  factory TsmActivityStatusRepository() = _TsmActivityStatusRepositoryImpl;
}

class _TsmActivityStatusRepositoryImpl extends _TsmActivityStatusRepositoryGeneratedImpl
    implements TsmActivityStatusRepository {
  static _TsmActivityStatusRepositoryImpl _this;
  factory _TsmActivityStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityStatusRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityStatusRepositoryImpl._();
}
*/
