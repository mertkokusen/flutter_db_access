
part of '../../repositories/cus/visit_list_repository.dart';

abstract class _VisitListRepositoryGenerated {
  Future<VisitList> getInstance(int idAgent);
  Future<List<VisitList>> retrieveAll();

 Future<bool> save(VisitList agent);
}
class _VisitListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitListRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT_LIST";
  static const String _primaryKey = "ID_VISIT_LIST";

  _VisitListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VisitList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VisitList.fromMap(map);
  }

  Future<List<VisitList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VisitList.fromMap(f)).toList();
  }

  Future<VisitList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VisitList.fromMap(f)).first : VisitList();
  }

  Future<Iterable<VisitList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VisitList.fromMap(f));
  }
Future<bool> save(VisitList model) async {
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
abstract class VisitListRepository extends _VisitListRepositoryGenerated {
  factory VisitListRepository() = _VisitListRepositoryImpl;
}

class _VisitListRepositoryImpl extends _VisitListRepositoryGeneratedImpl
    implements VisitListRepository {
  static _VisitListRepositoryImpl _this;
  factory _VisitListRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitListRepositoryImpl._();
    }
    return _this;
  }
  _VisitListRepositoryImpl._();
}
*/
