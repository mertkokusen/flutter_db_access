
part of '../../repositories/cus/dealer_repository.dart';

abstract class _DealerRepositoryGenerated {
  Future<Dealer> getInstance(int idAgent);
  Future<List<Dealer>> retrieveAll();

 Future<bool> save(Dealer agent);
}
class _DealerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _DealerRepositoryGeneratedImpl _this;
  static const String _tableName = "DEALER";
  static const String _primaryKey = "ID_DEALER";

  _DealerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Dealer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Dealer.fromMap(map);
  }

  Future<List<Dealer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Dealer.fromMap(f)).toList();
  }

  Future<Dealer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Dealer.fromMap(f)).first : Dealer();
  }

  Future<Iterable<Dealer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Dealer.fromMap(f));
  }
Future<bool> save(Dealer model) async {
    bool result;
    if (model.idDealer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idDealer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idDealer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class DealerRepository extends _DealerRepositoryGenerated {
  factory DealerRepository() = _DealerRepositoryImpl;
}

class _DealerRepositoryImpl extends _DealerRepositoryGeneratedImpl
    implements DealerRepository {
  static _DealerRepositoryImpl _this;
  factory _DealerRepositoryImpl() {
    if (_this == null) {
      _this = new _DealerRepositoryImpl._();
    }
    return _this;
  }
  _DealerRepositoryImpl._();
}
*/
