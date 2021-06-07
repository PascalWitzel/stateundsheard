import 'package:shared_preferences/shared_preferences.dart';
import 'package:stateundsheard/model/kind.dart';

class DataModel {
  static List<String> namen = [];


  DataModel(){
    //ToDo Nothing
    namen = [];
    laden();
  }

  static void add(String name) {
    namen.add(name);
    printNamen();
  }
  static void clear(String name) {
    namen.clear();
  }
  static void printNamen() {
    for(int i = 0; i < namen.length; i++) {
      print(namen[i]);
      print(namen.length);
    }
  }
  static void speichern() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("anzahl", namen.length);
    for(int i = 0; i < namen.length; i++) {
     String att = "name_${i}";
      await prefs.setString(att, namen[i]);
    }
  }
  static void laden() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int anzahl = prefs.getInt("anzahl") ?? 0;
    namen.clear();
    for(int i = 0; i < anzahl; i++) {
      String att = "name_${i}";
      String value = prefs.getString(att)??"unbekannt";
      namen.add(value);
    }
  }
}