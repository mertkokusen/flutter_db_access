
part of '../../repositories/csh/visit_repository.dart';

abstract class _VisitRepositoryGenerated {
  Future<Visit> getInstance(int idAgent);
  Future<List<Visit>> retrieveAll();

 Future<bool> save(Visit agent);
}
class _VisitRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT";
  static const String _primaryKey = "ID_VISIT";

  _VisitRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Visit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Visit.fromMap(map);
  }

  Future<List<Visit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Visit.fromMap(f)).toList();
  }

  Future<Visit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Visit.fromMap(f)).first : Visit();
  }

  Future<Iterable<Visit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Visit.fromMap(f));
  }
Future<bool> save(Visit model) async {
    bool result;
    if (model.idVisit == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisit = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisit.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VisitRepository extends _VisitRepositoryGenerated {
  factory VisitRepository() = _VisitRepositoryImpl;
}

class _VisitRepositoryImpl extends _VisitRepositoryGeneratedImpl
    implements VisitRepository {
  static _VisitRepositoryImpl _this;
  factory _VisitRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitRepositoryImpl._();
    }
    return _this;
  }
  _VisitRepositoryImpl._();
}
*/
