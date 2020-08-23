import 'seance.dart';

class Day {
  final List<Seance> seance;
  Day({this.seance});

  factory Day.fromJSON(List<dynamic> data) {
    List<Seance> seance = [];
    if ((data.length) > 0) {
      for (var item in data) {
        seance.add(Seance.fromJSON(item));
      }
    }
    return Day(seance: seance);
  }

  @override
  String toString() {
    List<String> list = [];
    for (var item in seance) {
      list.add(item.toString());
    }
    return list.join("\n");
  }
}
