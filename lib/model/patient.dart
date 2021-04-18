class Patient{
  String _name;
  String  _birthDate;
  String _sex;
  String _category;

  String get name => _name;

  set name(String value) {
    _name = value;
  }


  Patient(this._name, this._birthDate, this._sex, this._category);

  String get birthDate => _birthDate;

  String get category => _category;

  set category(String value) {
    _category = value;
  }

  String get sex => _sex;

  set sex(String value) {
    _sex = value;
  }

  set birthDate(String value) {
    _birthDate = value;
  }
}