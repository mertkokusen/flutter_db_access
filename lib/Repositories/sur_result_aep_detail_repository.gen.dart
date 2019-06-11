import 'package:database_access_layer/Entities/sur_result_aep_detail.gen.dart';
import 'base_provider.dart';

abstract class _SurResultAepDetailRepositoryGenerated {
  Future<SurResultAepDetail> getInstance(int idAgent);
  Future<bool> save(SurResultAepDetail agent);
  Future<List<SurResultAepDetail>> retrieveAll();
}

class _SurResultAepDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultAepDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_AEP_DETAIL";
  static const String _primaryKey = "ID_RESULT_AEP_DETAIL";

  _SurResultAepDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultAepDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultAepDetail.fromMap(map);
  }

  Future<List<SurResultAepDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultAepDetail.fromMap(f)).toList();
  }

  Future<SurResultAepDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultAepDetail.fromMap(f)).first : SurResultAepDetail();
  }

  Future<Iterable<SurResultAepDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultAepDetail.fromMap(f));
  }
Future<bool> save(SurResultAepDetail model) async {
    bool result;
    if (model.idResultAepDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultAepDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultAepDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultAepDetailRepository extends _SurResultAepDetailRepositoryGenerated {
  factory SurResultAepDetailRepository() = _SurResultAepDetailRepositoryImpl;
}

class _SurResultAepDetailRepositoryImpl extends _SurResultAepDetailRepositoryGeneratedImpl
    implements SurResultAepDetailRepository {
  static _SurResultAepDetailRepositoryImpl _this;
  factory _SurResultAepDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultAepDetailRepositoryImpl._();
    }
    return _this;
  }
  _SurResultAepDetailRepositoryImpl._();
}
*/
