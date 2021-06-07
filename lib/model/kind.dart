// To parse this JSON data, do
//
//     final preisliste = preislisteFromJson(jsonString);

import 'dart:convert';

Preisliste preislisteFromJson(String str) => Preisliste.fromJson(json.decode(str));

String preislisteToJson(Preisliste data) => json.encode(data.toJson());

class Preisliste {
  Preisliste({
    String name,
    String alter,
  });

  String name;
  int alter;

  factory Preisliste.fromJson(Map<String, dynamic> json) => Preisliste(
    name: json["name"],
    alter: json["alter"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "alter": alter,
  };
}
