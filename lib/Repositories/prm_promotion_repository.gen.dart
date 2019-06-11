import 'package:database_access_layer/Entities/prm_promotion.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionRepositoryGenerated {
  Future<PrmPromotion> getInstance(int idAgent);
  Future<bool> save(PrmPromotion agent);
  Future<List<PrmPromotion>> retrieveAll();
}

class _PrmPromotionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION";
  static const String _primaryKey = "ID_PROMOTION";

  _PrmPromotionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotion> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotion.fromMap(map);
  }

  Future<List<PrmPromotion>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotion.fromMap(f)).toList();
  }

  Future<PrmPromotion> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotion.fromMap(f)).first : PrmPromotion();
  }

  Future<Iterable<PrmPromotion>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotion.fromMap(f));
  }
Future<bool> save(PrmPromotion model) async {
    bool result;
    if (model.idPromotion == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotion = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotion.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionRepository extends _PrmPromotionRepositoryGenerated {
  factory PrmPromotionRepository() = _PrmPromotionRepositoryImpl;
}

class _PrmPromotionRepositoryImpl extends _PrmPromotionRepositoryGeneratedImpl
    implements PrmPromotionRepository {
  static _PrmPromotionRepositoryImpl _this;
  factory _PrmPromotionRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionRepositoryImpl._();
}
*/
