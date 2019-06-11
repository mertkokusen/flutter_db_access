import 'package:database_access_layer/Entities/prm_promotion_usage.gen.dart';
import 'base_provider.dart';

abstract class _PrmPromotionUsageRepositoryGenerated {
  Future<PrmPromotionUsage> getInstance(int idAgent);
  Future<bool> save(PrmPromotionUsage agent);
  Future<List<PrmPromotionUsage>> retrieveAll();
}

class _PrmPromotionUsageRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrmPromotionUsageRepositoryGeneratedImpl _this;
  static const String _tableName = "PRM_PROMOTION_USAGE";
  static const String _primaryKey = "ID_PROMOTION_USAGE";

  _PrmPromotionUsageRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrmPromotionUsage> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrmPromotionUsage.fromMap(map);
  }

  Future<List<PrmPromotionUsage>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrmPromotionUsage.fromMap(f)).toList();
  }

  Future<PrmPromotionUsage> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrmPromotionUsage.fromMap(f)).first : PrmPromotionUsage();
  }

  Future<Iterable<PrmPromotionUsage>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrmPromotionUsage.fromMap(f));
  }
Future<bool> save(PrmPromotionUsage model) async {
    bool result;
    if (model.idPromotionUsage == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPromotionUsage = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPromotionUsage.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrmPromotionUsageRepository extends _PrmPromotionUsageRepositoryGenerated {
  factory PrmPromotionUsageRepository() = _PrmPromotionUsageRepositoryImpl;
}

class _PrmPromotionUsageRepositoryImpl extends _PrmPromotionUsageRepositoryGeneratedImpl
    implements PrmPromotionUsageRepository {
  static _PrmPromotionUsageRepositoryImpl _this;
  factory _PrmPromotionUsageRepositoryImpl() {
    if (_this == null) {
      _this = new _PrmPromotionUsageRepositoryImpl._();
    }
    return _this;
  }
  _PrmPromotionUsageRepositoryImpl._();
}
*/
