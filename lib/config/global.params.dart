import 'package:flutter/material.dart';
import '../notifier/theme.dart';

class GlobalParams{
  static List<Map<String,dynamic>>
  menus=[
    {"title":"Parametres"," icon":Icon(Icons.add_chart_outlined,color: Colors.blue),"route": "/parametres"},
  ];
  static List<Map<String,dynamic>>Acceuil=[
    {"image": AssetImage('images/parametres.png'),"height":"180","width": "180","route": "/parametres"},
  ];
static MonTheme themeActuel=MonTheme();

}