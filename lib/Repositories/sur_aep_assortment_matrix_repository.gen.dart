import 'package:database_access_layer/Entities/sur_aep_assortment_matrix.gen.dart';
import 'base_provider.dart';

abstract class _SurAepAssortmentMatrixRepositoryGenerated {
  Future<SurAepAssortmentMatrix> getInstance(int idAgent);
  Future<bool> save(SurAepAssortmentMatrix agent);
  Future<List<SurAepAssortmentMatrix>> retrieveAll();
}

class _SurAepAssortmentMatrixRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SurAepAssortmentMatrixRepositoryGeneratedImpl _this;
  static const String _tableName = "SUR_AEP_ASSORTMENT_MATRIX";
  static const String _primaryKey = "ID_AEP_ASSORTMENT_MATRIX";

  _SurAepAssortmentMatrixRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SurAepAssortmentMatrix> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SurAepAssortmentMatrix.fromMap(map);
  }

  Future<List<SurAepAssortmentMatrix>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SurAepAssortmentMatrix.fromMap(f)).toList();
  }

  Future<SurAepAssortmentMatrix> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SurAepAssortmentMatrix.fromMap(f)).first : SurAepAssortmentMatrix();
  }

  Future<Iterable<SurAepAssortmentMatrix>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SurAepAssortmentMatrix.fromMap(f));
  }
Future<bool> save(SurAepAssortmentMatrix model) async {
    bool result;
    if (model.idAepAssortmentMatrix == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAepAssortmentMatrix = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAepAssortmentMatrix.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SurAepAssortmentMatrixRepository extends _SurAepAssortmentMatrixRepositoryGenerated {
  factory SurAepAssortmentMatrixRepository() = _SurAepAssortmentMatrixRepositoryImpl;
}

class _SurAepAssortmentMatrixRepositoryImpl extends _SurAepAssortmentMatrixRepositoryGeneratedImpl
    implements SurAepAssortmentMatrixRepository {
  static _SurAepAssortmentMatrixRepositoryImpl _this;
  factory _SurAepAssortmentMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _SurAepAssortmentMatrixRepositoryImpl._();
    }
    return _this;
  }
  _SurAepAssortmentMatrixRepositoryImpl._();
}
*/
