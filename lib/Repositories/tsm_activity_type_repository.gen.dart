import 'package:database_access_layer/Entities/tsm_activity_type.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityTypeRepositoryGenerated {
  Future<TsmActivityType> getInstance(int idAgent);
  Future<bool> save(TsmActivityType agent);
  Future<List<TsmActivityType>> retrieveAll();
}

class _TsmActivityTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_TYPE";
  static const String _primaryKey = "ID_ACTIVITY_TYPE";

  _TsmActivityTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivityType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivityType.fromMap(map);
  }

  Future<List<TsmActivityType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivityType.fromMap(f)).toList();
  }

  Future<TsmActivityType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivityType.fromMap(f)).first : TsmActivityType();
  }

  Future<Iterable<TsmActivityType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivityType.fromMap(f));
  }
Future<bool> save(TsmActivityType model) async {
    bool result;
    if (model.idActivityType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivityType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivityType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityTypeRepository extends _TsmActivityTypeRepositoryGenerated {
  factory TsmActivityTypeRepository() = _TsmActivityTypeRepositoryImpl;
}

class _TsmActivityTypeRepositoryImpl extends _TsmActivityTypeRepositoryGeneratedImpl
    implements TsmActivityTypeRepository {
  static _TsmActivityTypeRepositoryImpl _this;
  factory _TsmActivityTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityTypeRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityTypeRepositoryImpl._();
}
*/
