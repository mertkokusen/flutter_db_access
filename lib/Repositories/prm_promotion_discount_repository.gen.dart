import 'package:database_access_layer/Entities/prm_promotion_discount.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionDiscountRepositoryGenerated {
  Future<PrmPromotionDiscount> getInstance(int idAgent);
  Future<bool> save(PrmPromotionDiscount agent);
  Future<List<PrmPromotionDiscount>> retrieveAll();
}

class _PrmPromotionDiscountRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionDiscountRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION_DISCOUNT";
  static const String _primaryKey = "ID_PROMOTION_DISCOUNT";

  _PrmPromotionDiscountRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotionDiscount> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotionDiscount.fromMap(map);
  }

  Future<List<PrmPromotionDiscount>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotionDiscount.fromMap(f)).toList();
  }

  Future<PrmPromotionDiscount> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotionDiscount.fromMap(f)).first : PrmPromotionDiscount();
  }

  Future<Iterable<PrmPromotionDiscount>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotionDiscount.fromMap(f));
  }
Future<bool> save(PrmPromotionDiscount model) async {
    bool result;
    if (model.idPromotionDiscount == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotionDiscount = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotionDiscount.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionDiscountRepository extends _PrmPromotionDiscountRepositoryGenerated {
  factory PrmPromotionDiscountRepository() = _PrmPromotionDiscountRepositoryImpl;
}

class _PrmPromotionDiscountRepositoryImpl extends _PrmPromotionDiscountRepositoryGeneratedImpl
    implements PrmPromotionDiscountRepository {
  static _PrmPromotionDiscountRepositoryImpl _this;
  factory _PrmPromotionDiscountRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionDiscountRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionDiscountRepositoryImpl._();
}
*/
