
part of '../../repositories/cus/visit_type_repository.dart';

abstract class _VisitTypeRepositoryGenerated {
  Future<VisitType> getInstance(int idAgent);
  Future<List<VisitType>> retrieveAll();

 Future<bool> save(VisitType agent);
}
class _VisitTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT_TYPE";
  static const String _primaryKey = "ID_VISIT_TYPE";

  _VisitTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VisitType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VisitType.fromMap(map);
  }

  Future<List<VisitType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VisitType.fromMap(f)).toList();
  }

  Future<VisitType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VisitType.fromMap(f)).first : VisitType();
  }

  Future<Iterable<VisitType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VisitType.fromMap(f));
  }
Future<bool> save(VisitType model) async {
    bool result;
    if (model.idVisitType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VisitTypeRepository extends _VisitTypeRepositoryGenerated {
  factory VisitTypeRepository() = _VisitTypeRepositoryImpl;
}

class _VisitTypeRepositoryImpl extends _VisitTypeRepositoryGeneratedImpl
    implements VisitTypeRepository {
  static _VisitTypeRepositoryImpl _this;
  factory _VisitTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitTypeRepositoryImpl._();
    }
    return _this;
  }
  _VisitTypeRepositoryImpl._();
}
*/
