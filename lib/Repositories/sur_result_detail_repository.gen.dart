import 'package:database_access_layer/Entities/sur_result_detail.gen.dart';
import 'base_provider.dart';

abstract class _SurResultDetailRepositoryGenerated {
  Future<SurResultDetail> getInstance(int idAgent);
  Future<bool> save(SurResultDetail agent);
  Future<List<SurResultDetail>> retrieveAll();
}

class _SurResultDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurResultDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_RESULT_DETAIL";
  static const String _primaryKey = "ID_RESULT_DETAIL";

  _SurResultDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurResultDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurResultDetail.fromMap(map);
  }

  Future<List<SurResultDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurResultDetail.fromMap(f)).toList();
  }

  Future<SurResultDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurResultDetail.fromMap(f)).first : SurResultDetail();
  }

  Future<Iterable<SurResultDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurResultDetail.fromMap(f));
  }
Future<bool> save(SurResultDetail model) async {
    bool result;
    if (model.idResultDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idResultDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idResultDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurResultDetailRepository extends _SurResultDetailRepositoryGenerated {
  factory SurResultDetailRepository() = _SurResultDetailRepositoryImpl;
}

class _SurResultDetailRepositoryImpl extends _SurResultDetailRepositoryGeneratedImpl
    implements SurResultDetailRepository {
  static _SurResultDetailRepositoryImpl _this;
  factory _SurResultDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _SurResultDetailRepositoryImpl._();
    }
    return _this;
  }
  _SurResultDetailRepositoryImpl._();
}
*/
