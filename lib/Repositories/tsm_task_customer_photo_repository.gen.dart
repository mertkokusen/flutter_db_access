import 'package:database_access_layer/Entities/tsm_task_customer_photo.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskCustomerPhotoRepositoryGenerated {
  Future<TsmTaskCustomerPhoto> getInstance(int idAgent);
  Future<bool> save(TsmTaskCustomerPhoto agent);
  Future<List<TsmTaskCustomerPhoto>> retrieveAll();
}

class _TsmTaskCustomerPhotoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskCustomerPhotoRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_CUSTOMER_PHOTO";
  static const String _primaryKey = "ID_TASK_CUSTOMER_PHOTO";

  _TsmTaskCustomerPhotoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskCustomerPhoto> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskCustomerPhoto.fromMap(map);
  }

  Future<List<TsmTaskCustomerPhoto>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskCustomerPhoto.fromMap(f)).toList();
  }

  Future<TsmTaskCustomerPhoto> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskCustomerPhoto.fromMap(f)).first : TsmTaskCustomerPhoto();
  }

  Future<Iterable<TsmTaskCustomerPhoto>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskCustomerPhoto.fromMap(f));
  }
Future<bool> save(TsmTaskCustomerPhoto model) async {
    bool result;
    if (model.idTaskCustomerPhoto == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskCustomerPhoto = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskCustomerPhoto.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskCustomerPhotoRepository extends _TsmTaskCustomerPhotoRepositoryGenerated {
  factory TsmTaskCustomerPhotoRepository() = _TsmTaskCustomerPhotoRepositoryImpl;
}

class _TsmTaskCustomerPhotoRepositoryImpl extends _TsmTaskCustomerPhotoRepositoryGeneratedImpl
    implements TsmTaskCustomerPhotoRepository {
  static _TsmTaskCustomerPhotoRepositoryImpl _this;
  factory _TsmTaskCustomerPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskCustomerPhotoRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskCustomerPhotoRepositoryImpl._();
}
*/
