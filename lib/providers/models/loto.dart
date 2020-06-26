import 'dart:convert';
import 'package:flutter/cupertino.dart';

List<Loto> lotoFromJson(String str) => List<Loto>.from(json.decode(str).map((x) => Loto.fromJson(x)));

String lotoToJson(List<Loto> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Loto with ChangeNotifier {
  
    final String id;
    final String numMachine;
    final String numGagnant;
    final String numMachineGhana;
    final String numGagnantGhana;
    final String heure;
    DateTime date;

    Loto({
      this.id,
      this.numMachine,
      this.numGagnant,
      this.numMachineGhana,
      this.numGagnantGhana,
      this.heure,
      this.date,
    });

    factory Loto.fromJson(Map<String, dynamic> json) => Loto(
        id: json["id"],
        numMachine: json["num_machine"],
        numGagnant: json["num_gagnant"],
        numMachineGhana: json["num_machine_ghana"],
        numGagnantGhana: json["num_gagnant_ghana"],
        heure: json["heure"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num_machine": numMachine,
        "num_gagnant": numGagnant,
        "num_machine_ghana": numMachineGhana,
        "num_gagnant_ghana": numGagnantGhana,
        "heure": heure,
        "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    };
}
