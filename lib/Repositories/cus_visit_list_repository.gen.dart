import 'package:database_access_layer/Entities/cus_visit_list.gen.dart';
import 'base_provider.dart';

abstract class _CusVisitListRepositoryGenerated {
  Future<CusVisitList> getInstance(int idAgent);
  Future<bool> save(CusVisitList agent);
  Future<List<CusVisitList>> retrieveAll();
}

class _CusVisitListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusVisitListRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_VISIT_LIST";
  static const String _primaryKey = "ID_VISIT_LIST";

  _CusVisitListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusVisitList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusVisitList.fromMap(map);
  }

  Future<List<CusVisitList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusVisitList.fromMap(f)).toList();
  }

  Future<CusVisitList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusVisitList.fromMap(f)).first : CusVisitList();
  }

  Future<Iterable<CusVisitList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusVisitList.fromMap(f));
  }
Future<bool> save(CusVisitList model) async {
    bool result;
    if (model.idVisitList == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitList = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitList.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusVisitListRepository extends _CusVisitListRepositoryGenerated {
  factory CusVisitListRepository() = _CusVisitListRepositoryImpl;
}

class _CusVisitListRepositoryImpl extends _CusVisitListRepositoryGeneratedImpl
    implements CusVisitListRepository {
  static _CusVisitListRepositoryImpl _this;
  factory _CusVisitListRepositoryImpl() {
    if (_this == null) {
      _this = new _CusVisitListRepositoryImpl._();
    }
    return _this;
  }
  _CusVisitListRepositoryImpl._();
}
*/
