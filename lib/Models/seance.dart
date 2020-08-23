class Seance {
  final int time;
  final String matiere;
  final String prof;
  final String type;
  final String salle;
  final String regime;

  Seance(
      {this.matiere, this.prof, this.regime, this.salle, this.time, this.type});

  factory Seance.fromJSON(Map<String, dynamic> data) {
    return Seance(
      time: data["Séance"] as int,
      matiere: data["Matière"] as String,
      prof: data["Enseignant"] as String,
      type: data["Type"] as String,
      salle: data["Salle"] as String,
      regime: data["Régime"] as String,
    );
  }

  @override
  String toString() {
    return "time: $time\nmatiere: $matiere\nprof: $prof\ntype: $type\nsalle: $salle\nregime: $regime\n";
  }
}
