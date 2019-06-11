import 'package:database_access_layer/Entities/sur_aep_distribution_type.gen.dart';
import 'base_provider.dart';

abstract class _SurAepDistributionTypeRepositoryGenerated {
  Future<SurAepDistributionType> getInstance(int idAgent);
  Future<bool> save(SurAepDistributionType agent);
  Future<List<SurAepDistributionType>> retrieveAll();
}

class _SurAepDistributionTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepDistributionTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_DISTRIBUTION_TYPE";
  static const String _primaryKey = "ID_AEP_DISTRIBUTION_TYPE";

  _SurAepDistributionTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepDistributionType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepDistributionType.fromMap(map);
  }

  Future<List<SurAepDistributionType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepDistributionType.fromMap(f)).toList();
  }

  Future<SurAepDistributionType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepDistributionType.fromMap(f)).first : SurAepDistributionType();
  }

  Future<Iterable<SurAepDistributionType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepDistributionType.fromMap(f));
  }
Future<bool> save(SurAepDistributionType model) async {
    bool result;
    if (model.idAepDistributionType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepDistributionType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepDistributionType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepDistributionTypeRepository extends _SurAepDistributionTypeRepositoryGenerated {
  factory SurAepDistributionTypeRepository() = _SurAepDistributionTypeRepositoryImpl;
}

class _SurAepDistributionTypeRepositoryImpl extends _SurAepDistributionTypeRepositoryGeneratedImpl
    implements SurAepDistributionTypeRepository {
  static _SurAepDistributionTypeRepositoryImpl _this;
  factory _SurAepDistributionTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepDistributionTypeRepositoryImpl._();
    }
    return _this;
  }
  _SurAepDistributionTypeRepositoryImpl._();
}
*/
