import 'package:database_access_layer/Entities/acc_tax_matrix.gen.dart';
import 'base_provider.dart';

abstract class _AccTaxMatrixRepositoryGenerated {
  Future<AccTaxMatrix> getInstance(int idAgent);
  Future<bool> save(AccTaxMatrix agent);
  Future<List<AccTaxMatrix>> retrieveAll();
}

class _AccTaxMatrixRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccTaxMatrixRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_TAX_MATRIX";
  static const String _primaryKey = "ID_TAX_MATRIX";

  _AccTaxMatrixRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccTaxMatrix> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccTaxMatrix.fromMap(map);
  }

  Future<List<AccTaxMatrix>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccTaxMatrix.fromMap(f)).toList();
  }

  Future<AccTaxMatrix> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccTaxMatrix.fromMap(f)).first : AccTaxMatrix();
  }

  Future<Iterable<AccTaxMatrix>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccTaxMatrix.fromMap(f));
  }
Future<bool> save(AccTaxMatrix model) async {
    bool result;
    if (model.idTaxMatrix == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaxMatrix = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaxMatrix.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AccTaxMatrixRepository extends _AccTaxMatrixRepositoryGenerated {
  factory AccTaxMatrixRepository() = _AccTaxMatrixRepositoryImpl;
}

class _AccTaxMatrixRepositoryImpl extends _AccTaxMatrixRepositoryGeneratedImpl
    implements AccTaxMatrixRepository {
  static _AccTaxMatrixRepositoryImpl _this;
  factory _AccTaxMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _AccTaxMatrixRepositoryImpl._();
    }
    return _this;
  }
  _AccTaxMatrixRepositoryImpl._();
}
*/
