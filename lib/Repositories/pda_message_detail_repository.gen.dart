import 'package:database_access_layer/Entities/pda_message_detail.gen.dart';
import 'base_provider.dart';

abstract class _PdaMessageDetailRepositoryGenerated {
  Future<PdaMessageDetail> getInstance(int idAgent);
  Future<bool> save(PdaMessageDetail agent);
  Future<List<PdaMessageDetail>> retrieveAll();
}

class _PdaMessageDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PdaMessageDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "PDA_MESSAGE_DETAIL";
  static const String _primaryKey = "ID_MESSAGE_DETAIL";

  _PdaMessageDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PdaMessageDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PdaMessageDetail.fromMap(map);
  }

  Future<List<PdaMessageDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PdaMessageDetail.fromMap(f)).toList();
  }

  Future<PdaMessageDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PdaMessageDetail.fromMap(f)).first : PdaMessageDetail();
  }

  Future<Iterable<PdaMessageDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PdaMessageDetail.fromMap(f));
  }
Future<bool> save(PdaMessageDetail model) async {
    bool result;
    if (model.idMessageDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idMessageDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idMessageDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PdaMessageDetailRepository extends _PdaMessageDetailRepositoryGenerated {
  factory PdaMessageDetailRepository() = _PdaMessageDetailRepositoryImpl;
}

class _PdaMessageDetailRepositoryImpl extends _PdaMessageDetailRepositoryGeneratedImpl
    implements PdaMessageDetailRepository {
  static _PdaMessageDetailRepositoryImpl _this;
  factory _PdaMessageDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _PdaMessageDetailRepositoryImpl._();
    }
    return _this;
  }
  _PdaMessageDetailRepositoryImpl._();
}
*/
