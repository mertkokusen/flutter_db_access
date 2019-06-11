class PrdFavoriteHighlight {
  int idFavoriteHighlight;
  int idRoute;
  int idCustomer;
  int idProduct;
  
  PrdFavoriteHighlight({
    this.idFavoriteHighlight,
    this.idRoute,
    this.idCustomer,
    this.idProduct,
  });

  static PrdFavoriteHighlight fromMap(Map<String, dynamic> json) {
    return PrdFavoriteHighlight()
      ..idFavoriteHighlight = json['idFavoriteHighlight'] as int
      ..idRoute = json['idRoute'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idProduct = json['idProduct'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idFavoriteHighlight': idFavoriteHighlight,
        'idRoute': idRoute,
        'idCustomer': idCustomer,
        'idProduct': idProduct,
      };
}