import 'package:database_access_layer/Entities/prm_promotion_type.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionTypeRepositoryGenerated {
  Future<PrmPromotionType> getInstance(int idAgent);
  Future<bool> save(PrmPromotionType agent);
  Future<List<PrmPromotionType>> retrieveAll();
}

class _PrmPromotionTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION_TYPE";
  static const String _primaryKey = "ID_PROMOTION_TYPE";

  _PrmPromotionTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotionType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotionType.fromMap(map);
  }

  Future<List<PrmPromotionType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotionType.fromMap(f)).toList();
  }

  Future<PrmPromotionType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotionType.fromMap(f)).first : PrmPromotionType();
  }

  Future<Iterable<PrmPromotionType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotionType.fromMap(f));
  }
Future<bool> save(PrmPromotionType model) async {
    bool result;
    if (model.idPromotionType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotionType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotionType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionTypeRepository extends _PrmPromotionTypeRepositoryGenerated {
  factory PrmPromotionTypeRepository() = _PrmPromotionTypeRepositoryImpl;
}

class _PrmPromotionTypeRepositoryImpl extends _PrmPromotionTypeRepositoryGeneratedImpl
    implements PrmPromotionTypeRepository {
  static _PrmPromotionTypeRepositoryImpl _this;
  factory _PrmPromotionTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionTypeRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionTypeRepositoryImpl._();
}
*/
