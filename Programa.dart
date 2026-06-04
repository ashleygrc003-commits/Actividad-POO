void main(){
  Cafe objeto1 = new Cafe(2.51, 'latte');
  objeto1.preparar(azucar: true);

  Jugo objeto2 = new Jugo(3.69, 'Mango');
  objeto2.preparar(azucar: false);

}

class Bebida{
  double? _precio;

  Bebida(double precio){
    this._precio = precio;
  }

  double? get precio{
    return _precio;
  }

  void preparar({bool azucar = true}){
    print('Preparando bebida generica');
  }
}

class Cafe extends Bebida{
  String? _tipo;

  Cafe(double precio, String tipo): super(precio){
    this._tipo = tipo;
  }

  @override
  void preparar({bool azucar = true}){
    print("preparando un cafe tipo ${this._tipo} por \$$precio ${azucar ? 'con azucar' : 'sin azucar'}");
  }
}

class Jugo extends Bebida{
  String? _fruta;

  Jugo(double precio, String fruta): super(precio){
    this._fruta = fruta;
  }

  @override
  void preparar({bool azucar = true}){
    print("preparando un jugo de ${this._fruta} por \$$precio ${azucar ? 'con azucar' : 'sin azucar'}");
  }
}