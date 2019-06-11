import 'package:database_access_layer/Entities/pda_photo_quality.gen.dart';
import 'base_provider.dart';

abstract class _PdaPhotoQualityRepositoryGenerated {
  Future<PdaPhotoQuality> getInstance(int idAgent);
  Future<bool> save(PdaPhotoQuality agent);
  Future<List<PdaPhotoQuality>> retrieveAll();
}

class _PdaPhotoQualityRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaPhotoQualityRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_PHOTO_QUALITY";
  static const String _primaryKey = "ID_PHOTO_QUALITY";

  _PdaPhotoQualityRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaPhotoQuality> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaPhotoQuality.fromMap(map);
  }

  Future<List<PdaPhotoQuality>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaPhotoQuality.fromMap(f)).toList();
  }

  Future<PdaPhotoQuality> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaPhotoQuality.fromMap(f)).first : PdaPhotoQuality();
  }

  Future<Iterable<PdaPhotoQuality>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaPhotoQuality.fromMap(f));
  }
Future<bool> save(PdaPhotoQuality model) async {
    bool result;
    if (model.idPhotoQuality == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPhotoQuality = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPhotoQuality.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaPhotoQualityRepository extends _PdaPhotoQualityRepositoryGenerated {
  factory PdaPhotoQualityRepository() = _PdaPhotoQualityRepositoryImpl;
}

class _PdaPhotoQualityRepositoryImpl extends _PdaPhotoQualityRepositoryGeneratedImpl
    implements PdaPhotoQualityRepository {
  static _PdaPhotoQualityRepositoryImpl _this;
  factory _PdaPhotoQualityRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaPhotoQualityRepositoryImpl._();
    }
    return _this;
  }
  _PdaPhotoQualityRepositoryImpl._();
}
*/
