import 'dart:math';
// abstract class dan interface

// Abstract class
abstract class BangunDatar {
  // attribute
  num _luas;
  num _keliling;

  // getter
  num get luas => _luas == _luas.toInt() ? _luas.toInt() ?? 0 : _luas ?? 0;

  // getter
  num get keliling =>
      _keliling == _keliling.toInt() ? _keliling.toInt() ?? 0 : _keliling ?? 0;

  // status
  void getStatus() {
    print('luas     : $luas');
    print('keliling : $keliling');
  }
}

// interface
abstract class Operasi {
  // cari keliling
  void cariLuas();
  // cari luas
  void cariKeliling();
}

// mewarisi class bangun datar dan menginplement class operasi
class Persegi extends BangunDatar implements Operasi {
  final num _sisi;

  Persegi(this._sisi);

  @override
  void cariLuas() {
    _luas = _sisi * _sisi;
  }

  @override
  void cariKeliling() {
    _keliling = 4 * _sisi;
  }
}

// mewarisi class bangun datar dan menginplement kelas operasi
class PersegiPanjang extends BangunDatar implements Operasi {
  final num _sisi1, _sisi2;

  PersegiPanjang(this._sisi1, this._sisi2);

  @override
  void cariLuas() {
    _luas = _sisi1 * _sisi2;
  }

  @override
  void cariKeliling() {
    _keliling = 2 * (_sisi1 + _sisi2);
  }
}

// mewarisi class bangun datar dan menginplement class operasi
class Lingkaran extends BangunDatar implements Operasi {
  final num _jari_jari;

  Lingkaran(this._jari_jari);

  @override
  void cariLuas() {
    _luas = num.parse((pi * pow(_jari_jari, 2)).toStringAsFixed(2));
  }

  @override
  void cariKeliling() {
    _keliling = num.parse((2 * pi * _jari_jari).toStringAsFixed(2));
  }
}
