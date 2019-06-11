import 'package:database_access_layer/Entities/cus_customer_note.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerNoteRepositoryGenerated {
  Future<CusCustomerNote> getInstance(int idAgent);
  Future<bool> save(CusCustomerNote agent);
  Future<List<CusCustomerNote>> retrieveAll();
}

class _CusCustomerNoteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerNoteRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_NOTE";
  static const String _primaryKey = "ID_CUSTOMER_NOTE";

  _CusCustomerNoteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerNote> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerNote.fromMap(map);
  }

  Future<List<CusCustomerNote>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerNote.fromMap(f)).toList();
  }

  Future<CusCustomerNote> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerNote.fromMap(f)).first : CusCustomerNote();
  }

  Future<Iterable<CusCustomerNote>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerNote.fromMap(f));
  }
Future<bool> save(CusCustomerNote model) async {
    bool result;
    if (model.idCustomerNote == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerNote = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerNote.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusCustomerNoteRepository extends _CusCustomerNoteRepositoryGenerated {
  factory CusCustomerNoteRepository() = _CusCustomerNoteRepositoryImpl;
}

class _CusCustomerNoteRepositoryImpl extends _CusCustomerNoteRepositoryGeneratedImpl
    implements CusCustomerNoteRepository {
  static _CusCustomerNoteRepositoryImpl _this;
  factory _CusCustomerNoteRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerNoteRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerNoteRepositoryImpl._();
}
*/
