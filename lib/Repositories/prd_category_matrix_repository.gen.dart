import 'package:database_access_layer/Entities/prd_category_matrix.gen.dart';
import 'base_provider.dart';

abstract class _PrdCategoryMatrixRepositoryGenerated {
  Future<PrdCategoryMatrix> getInstance(int idAgent);
  Future<bool> save(PrdCategoryMatrix agent);
  Future<List<PrdCategoryMatrix>> retrieveAll();
}

class _PrdCategoryMatrixRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdCategoryMatrixRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_CATEGORY_MATRIX";
  static const String _primaryKey = "ID_CATEGORY_MATRIX";

  _PrdCategoryMatrixRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdCategoryMatrix> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdCategoryMatrix.fromMap(map);
  }

  Future<List<PrdCategoryMatrix>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdCategoryMatrix.fromMap(f)).toList();
  }

  Future<PrdCategoryMatrix> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdCategoryMatrix.fromMap(f)).first : PrdCategoryMatrix();
  }

  Future<Iterable<PrdCategoryMatrix>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdCategoryMatrix.fromMap(f));
  }
Future<bool> save(PrdCategoryMatrix model) async {
    bool result;
    if (model.idCategoryMatrix == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCategoryMatrix = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCategoryMatrix.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdCategoryMatrixRepository extends _PrdCategoryMatrixRepositoryGenerated {
  factory PrdCategoryMatrixRepository() = _PrdCategoryMatrixRepositoryImpl;
}

class _PrdCategoryMatrixRepositoryImpl extends _PrdCategoryMatrixRepositoryGeneratedImpl
    implements PrdCategoryMatrixRepository {
  static _PrdCategoryMatrixRepositoryImpl _this;
  factory _PrdCategoryMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdCategoryMatrixRepositoryImpl._();
    }
    return _this;
  }
  _PrdCategoryMatrixRepositoryImpl._();
}
*/
