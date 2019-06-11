import 'package:database_access_layer/Entities/prm_promotion_rule.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionRuleRepositoryGenerated {
  Future<PrmPromotionRule> getInstance(int idAgent);
  Future<bool> save(PrmPromotionRule agent);
  Future<List<PrmPromotionRule>> retrieveAll();
}

class _PrmPromotionRuleRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionRuleRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION_RULE";
  static const String _primaryKey = "ID_PROMOTION_RULE";

  _PrmPromotionRuleRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotionRule> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotionRule.fromMap(map);
  }

  Future<List<PrmPromotionRule>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotionRule.fromMap(f)).toList();
  }

  Future<PrmPromotionRule> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotionRule.fromMap(f)).first : PrmPromotionRule();
  }

  Future<Iterable<PrmPromotionRule>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotionRule.fromMap(f));
  }
Future<bool> save(PrmPromotionRule model) async {
    bool result;
    if (model.idPromotionRule == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotionRule = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotionRule.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionRuleRepository extends _PrmPromotionRuleRepositoryGenerated {
  factory PrmPromotionRuleRepository() = _PrmPromotionRuleRepositoryImpl;
}

class _PrmPromotionRuleRepositoryImpl extends _PrmPromotionRuleRepositoryGeneratedImpl
    implements PrmPromotionRuleRepository {
  static _PrmPromotionRuleRepositoryImpl _this;
  factory _PrmPromotionRuleRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionRuleRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionRuleRepositoryImpl._();
}
*/
