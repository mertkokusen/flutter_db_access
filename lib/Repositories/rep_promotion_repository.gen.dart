import 'package:database_access_layer/Entities/rep_promotion.gen.dart';
import 'base_provider.dart';

abstract class _RepPromotionRepositoryGenerated {
  Future<RepPromotion> getInstance(int idAgent);
  Future<bool> save(RepPromotion agent);
  Future<List<RepPromotion>> retrieveAll();
}

class _RepPromotionRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RepPromotionRepositoryGeneratedImpl _this;
  static const String _tableName = "REP_PROMOTION";
  static const String _primaryKey = "ID_PROMOTION";

  _RepPromotionRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RepPromotion> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RepPromotion.fromMap(map);
  }

  Future<List<RepPromotion>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RepPromotion.fromMap(f)).toList();
  }

  Future<RepPromotion> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RepPromotion.fromMap(f)).first : RepPromotion();
  }

  Future<Iterable<RepPromotion>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RepPromotion.fromMap(f));
  }
Future<bool> save(RepPromotion model) async {
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
abstract class RepPromotionRepository extends _RepPromotionRepositoryGenerated {
  factory RepPromotionRepository() = _RepPromotionRepositoryImpl;
}

class _RepPromotionRepositoryImpl extends _RepPromotionRepositoryGeneratedImpl
    implements RepPromotionRepository {
  static _RepPromotionRepositoryImpl _this;
  factory _RepPromotionRepositoryImpl() {
    if (_this == null) {
      _this = new _RepPromotionRepositoryImpl._();
    }
    return _this;
  }
  _RepPromotionRepositoryImpl._();
}
*/
