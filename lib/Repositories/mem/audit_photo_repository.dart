import 'package:database_access_layer/entities/mem/audit_photo.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/audit_photo_repository.gen.dart';

abstract class AuditPhotoRepository extends _AuditPhotoRepositoryGenerated {
  factory AuditPhotoRepository() = _AuditPhotoRepositoryImpl;
}

class _AuditPhotoRepositoryImpl extends _AuditPhotoRepositoryGeneratedImpl
    implements AuditPhotoRepository {
  static _AuditPhotoRepositoryImpl _this;
  factory _AuditPhotoRepositoryImpl() {
    if (_this == null) {
      _this = new _AuditPhotoRepositoryImpl._();
    }
    return _this;
  }
  _AuditPhotoRepositoryImpl._();
}

