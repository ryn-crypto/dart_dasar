// cara menggunakannya adalah denagn <x> pada nama class yang dibuat
class intScureBox<x> {
  final x _data;
  final String _pin;

  intScureBox(this._data, this._pin);

  x getData(String pin) => (pin == _pin) ? _data : null;
}
