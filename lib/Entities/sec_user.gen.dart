class SecUser {
  int idUser;
  int idUserRole;
  int idCompany;
  int idDealer;
  String dsUser;
  String dsUserDescription;
  String dsGpid;
  String dsPassword;
  int mtPhotoCompressRatio;
  int mtMinPhoto;
  int mtMaxPhoto;
  int idPhotoQuality;
  int idUserBackup;
  int idHierarchy;
  bool flHierarchy;
  bool flBlockVisitRealTime;
  int mtPhotoStoragePeriod;
  bool flLockComment;
  String dsLegacyNo;
  
  SecUser({
    this.idUser,
    this.idUserRole,
    this.idCompany,
    this.idDealer,
    this.dsUser,
    this.dsUserDescription,
    this.dsGpid,
    this.dsPassword,
    this.mtPhotoCompressRatio,
    this.mtMinPhoto,
    this.mtMaxPhoto,
    this.idPhotoQuality,
    this.idUserBackup,
    this.idHierarchy,
    this.flHierarchy,
    this.flBlockVisitRealTime,
    this.mtPhotoStoragePeriod,
    this.flLockComment,
    this.dsLegacyNo,
  });

  static SecUser fromMap(Map<String, dynamic> json) {
    return SecUser()
      ..idUser = json['idUser'] as int
      ..idUserRole = json['idUserRole'] as int
      ..idCompany = json['idCompany'] as int
      ..idDealer = json['idDealer'] as int
      ..dsUser = json['dsUser'] as String
      ..dsUserDescription = json['dsUserDescription'] as String
      ..dsGpid = json['dsGpid'] as String
      ..dsPassword = json['dsPassword'] as String
      ..mtPhotoCompressRatio = json['mtPhotoCompressRatio'] as int
      ..mtMinPhoto = json['mtMinPhoto'] as int
      ..mtMaxPhoto = json['mtMaxPhoto'] as int
      ..idPhotoQuality = json['idPhotoQuality'] as int
      ..idUserBackup = json['idUserBackup'] as int
      ..idHierarchy = json['idHierarchy'] as int
      ..flHierarchy = json['flHierarchy'] == 1 ? true : false
      ..flBlockVisitRealTime = json['flBlockVisitRealTime'] == 1 ? true : false
      ..mtPhotoStoragePeriod = json['mtPhotoStoragePeriod'] as int
      ..flLockComment = json['flLockComment'] == 1 ? true : false
      ..dsLegacyNo = json['dsLegacyNo'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idUser': idUser,
        'idUserRole': idUserRole,
        'idCompany': idCompany,
        'idDealer': idDealer,
        'dsUser': dsUser,
        'dsUserDescription': dsUserDescription,
        'dsGpid': dsGpid,
        'dsPassword': dsPassword,
        'mtPhotoCompressRatio': mtPhotoCompressRatio,
        'mtMinPhoto': mtMinPhoto,
        'mtMaxPhoto': mtMaxPhoto,
        'idPhotoQuality': idPhotoQuality,
        'idUserBackup': idUserBackup,
        'idHierarchy': idHierarchy,
        'flHierarchy': flHierarchy,
        'flBlockVisitRealTime': flBlockVisitRealTime,
        'mtPhotoStoragePeriod': mtPhotoStoragePeriod,
        'flLockComment': flLockComment,
        'dsLegacyNo': dsLegacyNo,
      };
}