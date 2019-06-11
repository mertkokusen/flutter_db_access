import 'package:database_access_layer/Entities/pda_no_gps_reason.gen.dart';
import 'base_provider.dart';

abstract class _PdaNoGpsReasonRepositoryGenerated {
  Future<PdaNoGpsReason> getInstance(int idAgent);
  Future<bool> save(PdaNoGpsReason agent);
  Future<List<PdaNoGpsReason>> retrieveAll();
}

class _PdaNoGpsReasonRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaNoGpsReasonRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_NO_GPS_REASON";
  static const String _primaryKey = "ID_NO_GPS_REASON";

  _PdaNoGpsReasonRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaNoGpsReason> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaNoGpsReason.fromMap(map);
  }

  Future<List<PdaNoGpsReason>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaNoGpsReason.fromMap(f)).toList();
  }

  Future<PdaNoGpsReason> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaNoGpsReason.fromMap(f)).first : PdaNoGpsReason();
  }

  Future<Iterable<PdaNoGpsReason>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaNoGpsReason.fromMap(f));
  }
Future<bool> save(PdaNoGpsReason model) async {
    bool result;
    if (model.idNoGpsReason == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idNoGpsReason = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idNoGpsReason.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaNoGpsReasonRepository extends _PdaNoGpsReasonRepositoryGenerated {
  factory PdaNoGpsReasonRepository() = _PdaNoGpsReasonRepositoryImpl;
}

class _PdaNoGpsReasonRepositoryImpl extends _PdaNoGpsReasonRepositoryGeneratedImpl
    implements PdaNoGpsReasonRepository {
  static _PdaNoGpsReasonRepositoryImpl _this;
  factory _PdaNoGpsReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaNoGpsReasonRepositoryImpl._();
    }
    return _this;
  }
  _PdaNoGpsReasonRepositoryImpl._();
}
*/
