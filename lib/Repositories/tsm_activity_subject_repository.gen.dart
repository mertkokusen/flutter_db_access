import 'package:database_access_layer/Entities/tsm_activity_subject.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivitySubjectRepositoryGenerated {
  Future<TsmActivitySubject> getInstance(int idAgent);
  Future<bool> save(TsmActivitySubject agent);
  Future<List<TsmActivitySubject>> retrieveAll();
}

class _TsmActivitySubjectRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivitySubjectRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_SUBJECT";
  static const String _primaryKey = "ID_ACTIVITY_SUBJECT";

  _TsmActivitySubjectRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivitySubject> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivitySubject.fromMap(map);
  }

  Future<List<TsmActivitySubject>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivitySubject.fromMap(f)).toList();
  }

  Future<TsmActivitySubject> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivitySubject.fromMap(f)).first : TsmActivitySubject();
  }

  Future<Iterable<TsmActivitySubject>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivitySubject.fromMap(f));
  }
Future<bool> save(TsmActivitySubject model) async {
    bool result;
    if (model.idActivitySubject == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivitySubject = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivitySubject.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivitySubjectRepository extends _TsmActivitySubjectRepositoryGenerated {
  factory TsmActivitySubjectRepository() = _TsmActivitySubjectRepositoryImpl;
}

class _TsmActivitySubjectRepositoryImpl extends _TsmActivitySubjectRepositoryGeneratedImpl
    implements TsmActivitySubjectRepository {
  static _TsmActivitySubjectRepositoryImpl _this;
  factory _TsmActivitySubjectRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivitySubjectRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivitySubjectRepositoryImpl._();
}
*/
