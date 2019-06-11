import 'package:database_access_layer/Entities/csh_visit.gen.dart';
import 'base_provider.dart';

abstract class _CshVisitRepositoryGenerated {
  Future<CshVisit> getInstance(int idAgent);
  Future<bool> save(CshVisit agent);
  Future<List<CshVisit>> retrieveAll();
}

class _CshVisitRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CshVisitRepositoryGeneratedImpl _this;
  static const String _tableName = "CSH_VISIT";
  static const String _primaryKey = "ID_VISIT";

  _CshVisitRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CshVisit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CshVisit.fromMap(map);
  }

  Future<List<CshVisit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CshVisit.fromMap(f)).toList();
  }

  Future<CshVisit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CshVisit.fromMap(f)).first : CshVisit();
  }

  Future<Iterable<CshVisit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CshVisit.fromMap(f));
  }
Future<bool> save(CshVisit model) async {
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
abstract class CshVisitRepository extends _CshVisitRepositoryGenerated {
  factory CshVisitRepository() = _CshVisitRepositoryImpl;
}

class _CshVisitRepositoryImpl extends _CshVisitRepositoryGeneratedImpl
    implements CshVisitRepository {
  static _CshVisitRepositoryImpl _this;
  factory _CshVisitRepositoryImpl() {
    if (_this == null) {
      _this = new _CshVisitRepositoryImpl._();
    }
    return _this;
  }
  _CshVisitRepositoryImpl._();
}
*/
