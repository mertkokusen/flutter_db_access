import 'package:database_access_layer/Entities/pda_message.gen.dart';
import 'base_provider.dart';

abstract class _PdaMessageRepositoryGenerated {
  Future<PdaMessage> getInstance(int idAgent);
  Future<bool> save(PdaMessage agent);
  Future<List<PdaMessage>> retrieveAll();
}

class _PdaMessageRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaMessageRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_MESSAGE";
  static const String _primaryKey = "ID_MESSAGE";

  _PdaMessageRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaMessage> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaMessage.fromMap(map);
  }

  Future<List<PdaMessage>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaMessage.fromMap(f)).toList();
  }

  Future<PdaMessage> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaMessage.fromMap(f)).first : PdaMessage();
  }

  Future<Iterable<PdaMessage>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaMessage.fromMap(f));
  }
Future<bool> save(PdaMessage model) async {
    bool result;
    if (model.idMessage == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idMessage = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idMessage.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaMessageRepository extends _PdaMessageRepositoryGenerated {
  factory PdaMessageRepository() = _PdaMessageRepositoryImpl;
}

class _PdaMessageRepositoryImpl extends _PdaMessageRepositoryGeneratedImpl
    implements PdaMessageRepository {
  static _PdaMessageRepositoryImpl _this;
  factory _PdaMessageRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaMessageRepositoryImpl._();
    }
    return _this;
  }
  _PdaMessageRepositoryImpl._();
}
*/
