import 'dart:ffi';

import 'package:flutter/cupertino.dart';

import '../widgets/age_radio.dart';
import '../widgets/blood_pressure_radio.dart';
import '../widgets/cholestero_radiol.dart';
import '../widgets/family_illness_radio.dart';
import '../widgets/gender_radio.dart';
import '../widgets/smoke_radio.dart';
import '../widgets/wheight_radio.dart';

class Person {
  int? _id;
  String? _name;
  AgeOptions? _age;
  //BloodPressureOptions? _bloodPressureOptions;
 // CholesterolOptions _cholesterolOptions;
//  FamilyIllnessOptions _familyIllnessOptions;
//  GenderOptions _genderOptions;
//  SmokeOptions _smokeOptions;
 // WheightOptions _wheightOptions;


  Person(this._name,this._age);// construtor do objeto
  Person.comID(this._id,this._name,this._age);// construtor do objeto

  int? get id => _id;

  String get name =>  name;


  set name(String newName) {
    if (newName.length <= 255) {
        this._name = newName;
      }
    }

    int get age{
    debugPrint(_age!.index.toString());
       return _age!.index;
    }



    Map<String, dynamic> toMap() {
      //converte um obj para um mapa
      var map = Map<String, dynamic>();
      if (id != null) {
        map['id'] = _id;
      }
      map['name'] =_name;
      map['age'] = age;
      //  map['bloodPressureOptions'] =  _bloodPressureOptions;
      //    map['desc'] = _desc;
    return map;
  }



  Person.fromMapObject(Map<String, dynamic> map) {
    //Pega um mapa e convente para um obj.
    this._id = map['id'];
    this._name = map['name'];
    this._age=map["age"];
   // this._bloodPressureOptions=map["bloodPressureOptions"];
//    this._desc = map['desc'];
  }
}