

import 'package:internship_hp/model/messagemodel.dart';
import 'package:internship_hp/model/patient.dart';

class localMemory{


  var listofPatient=  new List();
  var listofMessage = new List();

  List allpatients(){

    for(var i = 0; i<23; i++){
      var a = new Patient("Aldo","08 April 2000","Male","OutPatient");
      listofPatient.add(a);
      return listofPatient;


    }

  }
  List allMessage(){

    for(var i = 0; i<23; i++){
      var a = new messagemodel("Aldo ${i+1}","pesan ke -${i+1}");
      listofPatient.add(a);
      return listofPatient;


    }

  }
  int numofPatient(){
    return listofPatient.length;
  }
  int numOfMessage(){
    return listofMessage.length;
  }

  localMemory();


}