
part of '../../repositories/cus/visit_list_detail_repository.dart';

abstract class _VisitListDetailRepositoryGenerated {
  Future<VisitListDetail> getInstance(int idAgent);
  Future<List<VisitListDetail>> retrieveAll();

 Future<bool> save(VisitListDetail agent);
}
class _VisitListDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitListDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT_LIST_DETAIL";
  static const String _primaryKey = "ID_VISIT_LIST_DETAIL";

  _VisitListDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VisitListDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VisitListDetail.fromMap(map);
  }

  Future<List<VisitListDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VisitListDetail.fromMap(f)).toList();
  }

  Future<VisitListDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VisitListDetail.fromMap(f)).first : VisitListDetail();
  }

  Future<Iterable<VisitListDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VisitListDetail.fromMap(f));
  }
Future<bool> save(VisitListDetail model) async {
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
abstract class VisitListDetailRepository extends _VisitListDetailRepositoryGenerated {
  factory VisitListDetailRepository() = _VisitListDetailRepositoryImpl;
}

class _VisitListDetailRepositoryImpl extends _VisitListDetailRepositoryGeneratedImpl
    implements VisitListDetailRepository {
  static _VisitListDetailRepositoryImpl _this;
  factory _VisitListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitListDetailRepositoryImpl._();
    }
    return _this;
  }
  _VisitListDetailRepositoryImpl._();
}
*/
