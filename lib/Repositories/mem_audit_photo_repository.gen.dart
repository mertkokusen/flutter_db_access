import 'package:database_access_layer/Entities/mem_audit_photo.gen.dart';
import 'base_provider.dart';

abstract class _MemAuditPhotoRepositoryGenerated {
  Future<MemAuditPhoto> getInstance(int idAgent);
  Future<bool> save(MemAuditPhoto agent);
  Future<List<MemAuditPhoto>> retrieveAll();
}

class _MemAuditPhotoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemAuditPhotoRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_AUDIT_PHOTO";
  static const String _primaryKey = "ID_AUDIT_PHOTO";

  _MemAuditPhotoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemAuditPhoto> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemAuditPhoto.fromMap(map);
  }

  Future<List<MemAuditPhoto>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemAuditPhoto.fromMap(f)).toList();
  }

  Future<MemAuditPhoto> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemAuditPhoto.fromMap(f)).first : MemAuditPhoto();
  }

  Future<Iterable<MemAuditPhoto>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemAuditPhoto.fromMap(f));
  }
Future<bool> save(MemAuditPhoto model) async {
    bool result;
    if (model.idAuditPhoto == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAuditPhoto = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAuditPhoto.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemAuditPhotoRepository extends _MemAuditPhotoRepositoryGenerated {
  factory MemAuditPhotoRepository() = _MemAuditPhotoRepositoryImpl;
}

class _MemAuditPhotoRepositoryImpl extends _MemAuditPhotoRepositoryGeneratedImpl
    implements MemAuditPhotoRepository {
  static _MemAuditPhotoRepositoryImpl _this;
  factory _MemAuditPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _MemAuditPhotoRepositoryImpl._();
    }
    return _this;
  }
  _MemAuditPhotoRepositoryImpl._();
}
*/
