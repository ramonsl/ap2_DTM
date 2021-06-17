import 'dart:ffi';

class Person {
  int _id;
  String _name;
  int _age;
  String _desc;

  Person(this._name, this._age, [this._desc]);// construtor do objeto
  Person.comId(this._id, this._name, this._age, [this._desc]);//construtor nomeado

  int get id => _id;

  String get name =>  name;

  int get age => _age;

//  String get desc => _desc;

  set name(String newName) {
    if (newName.length <= 255) {
      this._name = newName;
    }
  }

  // set description(String newDesc) {
  //   if (newDesc.length <= 255) {
  //     this._desc = newDesc;
  //   }
  // }

  set age(int newAge) {
    this._age = newAge;
  }


  Map<String, dynamic> toMap() {
    //converte um obj para um mapa
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['name'] = Dart_NativeMessageHandler();
    map['age'] = _age;
//    map['desc'] = _desc;
    return map;
  }

  Person.fromMapObject(Map<String, dynamic> map) {
    //Pega um mapa e convente para um obj.
    this._id = map['id'];
    this._name = map['name'];
    this._age = map['age'];
//    this._desc = map['desc'];
  }
}