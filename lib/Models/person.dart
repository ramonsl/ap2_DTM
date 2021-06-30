import 'dart:ffi';

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
  AgeOptions? _ageOptions;
  BloodPressureOptions? _bloodPressureOptions;
 // CholesterolOptions _cholesterolOptions;
//  FamilyIllnessOptions _familyIllnessOptions;
//  GenderOptions _genderOptions;
//  SmokeOptions _smokeOptions;
 // WheightOptions _wheightOptions;


  Person(this._name,this._ageOptions, this._bloodPressureOptions);// construtor do objeto
  Person.comID(this._id,this._name,this._ageOptions, this._bloodPressureOptions);// construtor do objeto

  int get id => _id!;

  String get name =>  name;


  set name(String newName) {
    if (newName.length <= 255) {
        this._name = newName;
      }
    }

    int get ageOptions{
       return _ageOptions!.index;
    }

    set ageOptions(int index) {
      if (index == 0) {
        _ageOptions = AgeOptions.dez_a_20_anos;
      }
      if (index == 1) {
        _ageOptions = AgeOptions.vinte_e_um_a_30_anos;
      }
      if (index == 2) {
        _ageOptions = AgeOptions.trinta_e_um_a_40_anos;
      }
      if (index == 3) {
        _ageOptions = AgeOptions.quarenta_e_um_a_50_anos;
      }
      if (index == 4) {
        _ageOptions = AgeOptions.cinquenta_e_um_a_60_anos;
      }
      if (index == 5) {
        _ageOptions = AgeOptions.acima_de_60_anos;
      }
    }



    Map<String, dynamic> toMap() {
      //converte um obj para um mapa
      var map = Map<String, dynamic>();
      if (id != null) {
        map['id'] = _id;
      }
      map['name'] =_name;
      map['ageOptions'] = ageOptions;
      //  map['bloodPressureOptions'] =  _bloodPressureOptions;
      //    map['desc'] = _desc;
    return map;
  }



  Person.fromMapObject(Map<String, dynamic> map) {
    //Pega um mapa e convente para um obj.
    this._id = map['id'];
    this._name = map['name'];
    this.ageOptions=map["ageOptions"];
   // this._bloodPressureOptions=map["bloodPressureOptions"];
//    this._desc = map['desc'];
  }
}