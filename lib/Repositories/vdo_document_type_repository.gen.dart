import 'package:database_access_layer/Entities/vdo_document_type.gen.dart';
import 'base_provider.dart';

abstract class _VdoDocumentTypeRepositoryGenerated {
  Future<VdoDocumentType> getInstance(int idAgent);
  Future<bool> save(VdoDocumentType agent);
  Future<List<VdoDocumentType>> retrieveAll();
}

class _VdoDocumentTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VdoDocumentTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "VDO_DOCUMENT_TYPE";
  static const String _primaryKey = "ID_DOCUMENT_TYPE";

  _VdoDocumentTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VdoDocumentType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VdoDocumentType.fromMap(map);
  }

  Future<List<VdoDocumentType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VdoDocumentType.fromMap(f)).toList();
  }

  Future<VdoDocumentType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VdoDocumentType.fromMap(f)).first : VdoDocumentType();
  }

  Future<Iterable<VdoDocumentType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VdoDocumentType.fromMap(f));
  }
Future<bool> save(VdoDocumentType model) async {
    bool result;
    if (model.idDocumentType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idDocumentType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idDocumentType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class VdoDocumentTypeRepository extends _VdoDocumentTypeRepositoryGenerated {
  factory VdoDocumentTypeRepository() = _VdoDocumentTypeRepositoryImpl;
}

class _VdoDocumentTypeRepositoryImpl extends _VdoDocumentTypeRepositoryGeneratedImpl
    implements VdoDocumentTypeRepository {
  static _VdoDocumentTypeRepositoryImpl _this;
  factory _VdoDocumentTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _VdoDocumentTypeRepositoryImpl._();
    }
    return _this;
  }
  _VdoDocumentTypeRepositoryImpl._();
}
*/
