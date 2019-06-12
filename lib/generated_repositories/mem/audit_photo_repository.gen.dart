
part of '../../repositories/mem/audit_photo_repository.dart';

abstract class _AuditPhotoRepositoryGenerated {
  Future<AuditPhoto> getInstance(int idAgent);
  Future<List<AuditPhoto>> retrieveAll();

 Future<bool> save(AuditPhoto agent);
}
class _AuditPhotoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AuditPhotoRepositoryGeneratedImpl _this;
  static const String _tableName = "AUDIT_PHOTO";
  static const String _primaryKey = "ID_AUDIT_PHOTO";

  _AuditPhotoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AuditPhoto> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AuditPhoto.fromMap(map);
  }

  Future<List<AuditPhoto>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AuditPhoto.fromMap(f)).toList();
  }

  Future<AuditPhoto> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AuditPhoto.fromMap(f)).first : AuditPhoto();
  }

  Future<Iterable<AuditPhoto>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AuditPhoto.fromMap(f));
  }
Future<bool> save(AuditPhoto model) async {
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
abstract class AuditPhotoRepository extends _AuditPhotoRepositoryGenerated {
  factory AuditPhotoRepository() = _AuditPhotoRepositoryImpl;
}

class _AuditPhotoRepositoryImpl extends _AuditPhotoRepositoryGeneratedImpl
    implements AuditPhotoRepository {
  static _AuditPhotoRepositoryImpl _this;
  factory _AuditPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditPhotoRepositoryImpl._();
    }
    return _this;
  }
  _AuditPhotoRepositoryImpl._();
}
*/
