class PrdFavoriteDetail {
  int idFavoriteDetail;
  int idFavorite;
  int idProduct;
  int idProductGroup;
  int idMku;
  int mtQuantity;
  int idUnit;
  
  PrdFavoriteDetail({
    this.idFavoriteDetail,
    this.idFavorite,
    this.idProduct,
    this.idProductGroup,
    this.idMku,
    this.mtQuantity,
    this.idUnit,
  });

  static PrdFavoriteDetail fromMap(Map<String, dynamic> json) {
    return PrdFavoriteDetail()
      ..idFavoriteDetail = json['idFavoriteDetail'] as int
      ..idFavorite = json['idFavorite'] as int
      ..idProduct = json['idProduct'] as int
      ..idProductGroup = json['idProductGroup'] as int
      ..idMku = json['idMku'] as int
      ..mtQuantity = json['mtQuantity'] as int
      ..idUnit = json['idUnit'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idFavoriteDetail': idFavoriteDetail,
        'idFavorite': idFavorite,
        'idProduct': idProduct,
        'idProductGroup': idProductGroup,
        'idMku': idMku,
        'mtQuantity': mtQuantity,
        'idUnit': idUnit,
      };
}