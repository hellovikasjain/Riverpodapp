import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRiver extends ChangeNotifier{
  List<Color> li = [Colors.pink, Colors.blue, Colors.deepOrange, Colors.greenAccent, Colors.white, Colors.black];
  Color ini = Colors.pink;
  var i =0;
  Color textColor=Colors.black;



  post(){
    if(li.indexOf(ini)==4)
      textColor=Colors.white;
    else
      textColor=Colors.black;
    if(li.indexOf(ini)==5)
      { i=0;

      }
    else{
      i++;

    }
    ini=li[i];
    print("Color changes to orange");
    notifyListeners();

  }


}

final homeProvider = ChangeNotifierProvider((ref) => HomeRiver());