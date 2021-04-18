import 'package:flutter/material.dart';

class messagemodel{
  CircleAvatar _profile;
  String _name;
  String _text;

  messagemodel(this._name, this._text){
    profile = CircleAvatar(child: Icon(Icons.person),);

  }

  set profile(CircleAvatar value) {
    _profile = value;
  }

  set name(String value) {
    _name = value;
  }

  set text(String value) {
    _text = value;
  }


}