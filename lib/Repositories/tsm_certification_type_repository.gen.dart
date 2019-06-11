import 'package:database_access_layer/Entities/tsm_certification_type.gen.dart';
import 'base_provider.dart';

abstract class _TsmCertificationTypeRepositoryGenerated {
  Future<TsmCertificationType> getInstance(int idAgent);
  Future<bool> save(TsmCertificationType agent);
  Future<List<TsmCertificationType>> retrieveAll();
}

class _TsmCertificationTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmCertificationTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_CERTIFICATION_TYPE";
  static const String _primaryKey = "ID_CERTIFICATION_TYPE";

  _TsmCertificationTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmCertificationType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmCertificationType.fromMap(map);
  }

  Future<List<TsmCertificationType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmCertificationType.fromMap(f)).toList();
  }

  Future<TsmCertificationType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmCertificationType.fromMap(f)).first : TsmCertificationType();
  }

  Future<Iterable<TsmCertificationType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmCertificationType.fromMap(f));
  }
Future<bool> save(TsmCertificationType model) async {
    bool result;
    if (model.idCertificationType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCertificationType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCertificationType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmCertificationTypeRepository extends _TsmCertificationTypeRepositoryGenerated {
  factory TsmCertificationTypeRepository() = _TsmCertificationTypeRepositoryImpl;
}

class _TsmCertificationTypeRepositoryImpl extends _TsmCertificationTypeRepositoryGeneratedImpl
    implements TsmCertificationTypeRepository {
  static _TsmCertificationTypeRepositoryImpl _this;
  factory _TsmCertificationTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmCertificationTypeRepositoryImpl._();
    }
    return _this;
  }
  _TsmCertificationTypeRepositoryImpl._();
}
*/
