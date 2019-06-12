
part of '../../repositories/cus/coverage_repository.dart';

abstract class _CoverageRepositoryGenerated {
  Future<Coverage> getInstance(int idAgent);
  Future<List<Coverage>> retrieveAll();

 Future<bool> save(Coverage agent);
}
class _CoverageRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CoverageRepositoryGeneratedImpl _this;
  static const String _tableName = "COVERAGE";
  static const String _primaryKey = "ID_COVERAGE";

  _CoverageRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Coverage> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Coverage.fromMap(map);
  }

  Future<List<Coverage>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Coverage.fromMap(f)).toList();
  }

  Future<Coverage> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Coverage.fromMap(f)).first : Coverage();
  }

  Future<Iterable<Coverage>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Coverage.fromMap(f));
  }
Future<bool> save(Coverage model) async {
    bool result;
    if (model.idCoverage == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCoverage = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCoverage.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CoverageRepository extends _CoverageRepositoryGenerated {
  factory CoverageRepository() = _CoverageRepositoryImpl;
}

class _CoverageRepositoryImpl extends _CoverageRepositoryGeneratedImpl
    implements CoverageRepository {
  static _CoverageRepositoryImpl _this;
  factory _CoverageRepositoryImpl() {
    if (_this == null) {
      _this = new _CoverageRepositoryImpl._();
    }
    return _this;
  }
  _CoverageRepositoryImpl._();
}
*/
