import 'package:database_access_layer/Entities/pda_photo_activity.gen.dart';
import 'base_provider.dart';

abstract class _PdaPhotoActivityRepositoryGenerated {
  Future<PdaPhotoActivity> getInstance(int idAgent);
  Future<bool> save(PdaPhotoActivity agent);
  Future<List<PdaPhotoActivity>> retrieveAll();
}

class _PdaPhotoActivityRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaPhotoActivityRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_PHOTO_ACTIVITY";
  static const String _primaryKey = "ID_PHOTO_ACTIVITY";

  _PdaPhotoActivityRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaPhotoActivity> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaPhotoActivity.fromMap(map);
  }

  Future<List<PdaPhotoActivity>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaPhotoActivity.fromMap(f)).toList();
  }

  Future<PdaPhotoActivity> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaPhotoActivity.fromMap(f)).first : PdaPhotoActivity();
  }

  Future<Iterable<PdaPhotoActivity>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaPhotoActivity.fromMap(f));
  }
Future<bool> save(PdaPhotoActivity model) async {
    bool result;
    if (model.idPhotoActivity == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPhotoActivity = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPhotoActivity.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaPhotoActivityRepository extends _PdaPhotoActivityRepositoryGenerated {
  factory PdaPhotoActivityRepository() = _PdaPhotoActivityRepositoryImpl;
}

class _PdaPhotoActivityRepositoryImpl extends _PdaPhotoActivityRepositoryGeneratedImpl
    implements PdaPhotoActivityRepository {
  static _PdaPhotoActivityRepositoryImpl _this;
  factory _PdaPhotoActivityRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaPhotoActivityRepositoryImpl._();
    }
    return _this;
  }
  _PdaPhotoActivityRepositoryImpl._();
}
*/
