import 'package:database_access_layer/Entities/prm_promotion_rule_detail.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionRuleDetailRepositoryGenerated {
  Future<PrmPromotionRuleDetail> getInstance(int idAgent);
  Future<bool> save(PrmPromotionRuleDetail agent);
  Future<List<PrmPromotionRuleDetail>> retrieveAll();
}

class _PrmPromotionRuleDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionRuleDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION_RULE_DETAIL";
  static const String _primaryKey = "ID_PROMOTION_RULE_DETAIL";

  _PrmPromotionRuleDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotionRuleDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotionRuleDetail.fromMap(map);
  }

  Future<List<PrmPromotionRuleDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotionRuleDetail.fromMap(f)).toList();
  }

  Future<PrmPromotionRuleDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotionRuleDetail.fromMap(f)).first : PrmPromotionRuleDetail();
  }

  Future<Iterable<PrmPromotionRuleDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotionRuleDetail.fromMap(f));
  }
Future<bool> save(PrmPromotionRuleDetail model) async {
    bool result;
    if (model.idPromotionRuleDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotionRuleDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotionRuleDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionRuleDetailRepository extends _PrmPromotionRuleDetailRepositoryGenerated {
  factory PrmPromotionRuleDetailRepository() = _PrmPromotionRuleDetailRepositoryImpl;
}

class _PrmPromotionRuleDetailRepositoryImpl extends _PrmPromotionRuleDetailRepositoryGeneratedImpl
    implements PrmPromotionRuleDetailRepository {
  static _PrmPromotionRuleDetailRepositoryImpl _this;
  factory _PrmPromotionRuleDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionRuleDetailRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionRuleDetailRepositoryImpl._();
}
*/
