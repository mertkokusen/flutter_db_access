import 'package:database_access_layer/Entities/cus_coverage.gen.dart';
import 'base_provider.dart';

abstract class _CusCoverageRepositoryGenerated {
  Future<CusCoverage> getInstance(int idAgent);
  Future<bool> save(CusCoverage agent);
  Future<List<CusCoverage>> retrieveAll();
}

class _CusCoverageRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCoverageRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_COVERAGE";
  static const String _primaryKey = "ID_COVERAGE";

  _CusCoverageRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCoverage> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCoverage.fromMap(map);
  }

  Future<List<CusCoverage>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCoverage.fromMap(f)).toList();
  }

  Future<CusCoverage> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCoverage.fromMap(f)).first : CusCoverage();
  }

  Future<Iterable<CusCoverage>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCoverage.fromMap(f));
  }
Future<bool> save(CusCoverage model) async {
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
abstract class CusCoverageRepository extends _CusCoverageRepositoryGenerated {
  factory CusCoverageRepository() = _CusCoverageRepositoryImpl;
}

class _CusCoverageRepositoryImpl extends _CusCoverageRepositoryGeneratedImpl
    implements CusCoverageRepository {
  static _CusCoverageRepositoryImpl _this;
  factory _CusCoverageRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCoverageRepositoryImpl._();
    }
    return _this;
  }
  _CusCoverageRepositoryImpl._();
}
*/
