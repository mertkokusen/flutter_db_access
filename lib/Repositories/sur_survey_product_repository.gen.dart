import 'package:database_access_layer/Entities/sur_survey_product.gen.dart';
import 'base_provider.dart';

abstract class _SurSurveyProductRepositoryGenerated {
  Future<SurSurveyProduct> getInstance(int idAgent);
  Future<bool> save(SurSurveyProduct agent);
  Future<List<SurSurveyProduct>> retrieveAll();
}

class _SurSurveyProductRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurSurveyProductRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_SURVEY_PRODUCT";
  static const String _primaryKey = "ID_SURVEY_PRODUCT";

  _SurSurveyProductRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurSurveyProduct> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurSurveyProduct.fromMap(map);
  }

  Future<List<SurSurveyProduct>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurSurveyProduct.fromMap(f)).toList();
  }

  Future<SurSurveyProduct> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurSurveyProduct.fromMap(f)).first : SurSurveyProduct();
  }

  Future<Iterable<SurSurveyProduct>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurSurveyProduct.fromMap(f));
  }
Future<bool> save(SurSurveyProduct model) async {
    bool result;
    if (model.idSurveyProduct == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSurveyProduct = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSurveyProduct.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurSurveyProductRepository extends _SurSurveyProductRepositoryGenerated {
  factory SurSurveyProductRepository() = _SurSurveyProductRepositoryImpl;
}

class _SurSurveyProductRepositoryImpl extends _SurSurveyProductRepositoryGeneratedImpl
    implements SurSurveyProductRepository {
  static _SurSurveyProductRepositoryImpl _this;
  factory _SurSurveyProductRepositoryImpl() {
    if (_this == null) {
      _this = new _SurSurveyProductRepositoryImpl._();
    }
    return _this;
  }
  _SurSurveyProductRepositoryImpl._();
}
*/
