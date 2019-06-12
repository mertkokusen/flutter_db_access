
part of '../../repositories/acc/tax_matrix_repository.dart';

abstract class _TaxMatrixRepositoryGenerated {
  Future<TaxMatrix> getInstance(int idAgent);
  Future<List<TaxMatrix>> retrieveAll();

 Future<bool> save(TaxMatrix agent);
}
class _TaxMatrixRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TaxMatrixRepositoryGeneratedImpl _this;
  static const String _tableName = "TAX_MATRIX";
  static const String _primaryKey = "ID_TAX_MATRIX";

  _TaxMatrixRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TaxMatrix> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TaxMatrix.fromMap(map);
  }

  Future<List<TaxMatrix>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TaxMatrix.fromMap(f)).toList();
  }

  Future<TaxMatrix> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TaxMatrix.fromMap(f)).first : TaxMatrix();
  }

  Future<Iterable<TaxMatrix>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TaxMatrix.fromMap(f));
  }
Future<bool> save(TaxMatrix model) async {
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
abstract class TaxMatrixRepository extends _TaxMatrixRepositoryGenerated {
  factory TaxMatrixRepository() = _TaxMatrixRepositoryImpl;
}

class _TaxMatrixRepositoryImpl extends _TaxMatrixRepositoryGeneratedImpl
    implements TaxMatrixRepository {
  static _TaxMatrixRepositoryImpl _this;
  factory _TaxMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _TaxMatrixRepositoryImpl._();
    }
    return _this;
  }
  _TaxMatrixRepositoryImpl._();
}
*/
