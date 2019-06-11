import 'package:database_access_layer/Entities/pda_customer_statistic.gen.dart';
import 'base_provider.dart';

abstract class _PdaCustomerStatisticRepositoryGenerated {
  Future<PdaCustomerStatistic> getInstance(int idAgent);
  Future<bool> save(PdaCustomerStatistic agent);
  Future<List<PdaCustomerStatistic>> retrieveAll();
}

class _PdaCustomerStatisticRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaCustomerStatisticRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_CUSTOMER_STATISTIC";
  static const String _primaryKey = "ID_CUSTOMER_STATISTIC";

  _PdaCustomerStatisticRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaCustomerStatistic> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaCustomerStatistic.fromMap(map);
  }

  Future<List<PdaCustomerStatistic>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaCustomerStatistic.fromMap(f)).toList();
  }

  Future<PdaCustomerStatistic> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaCustomerStatistic.fromMap(f)).first : PdaCustomerStatistic();
  }

  Future<Iterable<PdaCustomerStatistic>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaCustomerStatistic.fromMap(f));
  }
Future<bool> save(PdaCustomerStatistic model) async {
    bool result;
    if (model.idCustomerStatistic == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerStatistic = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerStatistic.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaCustomerStatisticRepository extends _PdaCustomerStatisticRepositoryGenerated {
  factory PdaCustomerStatisticRepository() = _PdaCustomerStatisticRepositoryImpl;
}

class _PdaCustomerStatisticRepositoryImpl extends _PdaCustomerStatisticRepositoryGeneratedImpl
    implements PdaCustomerStatisticRepository {
  static _PdaCustomerStatisticRepositoryImpl _this;
  factory _PdaCustomerStatisticRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaCustomerStatisticRepositoryImpl._();
    }
    return _this;
  }
  _PdaCustomerStatisticRepositoryImpl._();
}
*/
