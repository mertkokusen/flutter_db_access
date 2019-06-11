import 'package:database_access_layer/Entities/pda_visit.gen.dart';
import 'base_provider.dart';

abstract class _PdaVisitRepositoryGenerated {
  Future<PdaVisit> getInstance(int idAgent);
  Future<bool> save(PdaVisit agent);
  Future<List<PdaVisit>> retrieveAll();
}

class _PdaVisitRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaVisitRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_VISIT";
  static const String _primaryKey = "ID_VISIT";

  _PdaVisitRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaVisit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaVisit.fromMap(map);
  }

  Future<List<PdaVisit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaVisit.fromMap(f)).toList();
  }

  Future<PdaVisit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaVisit.fromMap(f)).first : PdaVisit();
  }

  Future<Iterable<PdaVisit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaVisit.fromMap(f));
  }
Future<bool> save(PdaVisit model) async {
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
abstract class PdaVisitRepository extends _PdaVisitRepositoryGenerated {
  factory PdaVisitRepository() = _PdaVisitRepositoryImpl;
}

class _PdaVisitRepositoryImpl extends _PdaVisitRepositoryGeneratedImpl
    implements PdaVisitRepository {
  static _PdaVisitRepositoryImpl _this;
  factory _PdaVisitRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaVisitRepositoryImpl._();
    }
    return _this;
  }
  _PdaVisitRepositoryImpl._();
}
*/
