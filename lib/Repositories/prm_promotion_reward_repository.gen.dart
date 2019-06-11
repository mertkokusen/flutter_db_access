import 'package:database_access_layer/Entities/prm_promotion_reward.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionRewardRepositoryGenerated {
  Future<PrmPromotionReward> getInstance(int idAgent);
  Future<bool> save(PrmPromotionReward agent);
  Future<List<PrmPromotionReward>> retrieveAll();
}

class _PrmPromotionRewardRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionRewardRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION_REWARD";
  static const String _primaryKey = "ID_PROMOTION_REWARD";

  _PrmPromotionRewardRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotionReward> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotionReward.fromMap(map);
  }

  Future<List<PrmPromotionReward>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotionReward.fromMap(f)).toList();
  }

  Future<PrmPromotionReward> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotionReward.fromMap(f)).first : PrmPromotionReward();
  }

  Future<Iterable<PrmPromotionReward>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotionReward.fromMap(f));
  }
Future<bool> save(PrmPromotionReward model) async {
    bool result;
    if (model.idPromotionReward == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotionReward = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotionReward.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionRewardRepository extends _PrmPromotionRewardRepositoryGenerated {
  factory PrmPromotionRewardRepository() = _PrmPromotionRewardRepositoryImpl;
}

class _PrmPromotionRewardRepositoryImpl extends _PrmPromotionRewardRepositoryGeneratedImpl
    implements PrmPromotionRewardRepository {
  static _PrmPromotionRewardRepositoryImpl _this;
  factory _PrmPromotionRewardRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionRewardRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionRewardRepositoryImpl._();
}
*/
