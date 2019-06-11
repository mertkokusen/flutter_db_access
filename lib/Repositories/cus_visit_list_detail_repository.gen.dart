import 'package:database_access_layer/Entities/cus_visit_list_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusVisitListDetailRepositoryGenerated {
  Future<CusVisitListDetail> getInstance(int idAgent);
  Future<bool> save(CusVisitListDetail agent);
  Future<List<CusVisitListDetail>> retrieveAll();
}

class _CusVisitListDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusVisitListDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_VISIT_LIST_DETAIL";
  static const String _primaryKey = "ID_VISIT_LIST_DETAIL";

  _CusVisitListDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusVisitListDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusVisitListDetail.fromMap(map);
  }

  Future<List<CusVisitListDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusVisitListDetail.fromMap(f)).toList();
  }

  Future<CusVisitListDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusVisitListDetail.fromMap(f)).first : CusVisitListDetail();
  }

  Future<Iterable<CusVisitListDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusVisitListDetail.fromMap(f));
  }
Future<bool> save(CusVisitListDetail model) async {
    bool result;
    if (model.idVisitListDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitListDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitListDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusVisitListDetailRepository extends _CusVisitListDetailRepositoryGenerated {
  factory CusVisitListDetailRepository() = _CusVisitListDetailRepositoryImpl;
}

class _CusVisitListDetailRepositoryImpl extends _CusVisitListDetailRepositoryGeneratedImpl
    implements CusVisitListDetailRepository {
  static _CusVisitListDetailRepositoryImpl _this;
  factory _CusVisitListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusVisitListDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusVisitListDetailRepositoryImpl._();
}
*/
