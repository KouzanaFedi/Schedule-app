import 'group.dart';

class Filliere {
  final Group schedule;
  final List<Group> alternatives;

  Filliere({this.schedule, this.alternatives});

  factory Filliere.fromJSON(Map<String, dynamic> data) {
    List<Group> alternatives = [];
    if ((data["alternatives"] as List).length > 0) {
      for (var item in data["alternatives"] as List) {
        alternatives.add(Group.fromJSON(item));
      }
    }
    return Filliere(
        schedule: Group.fromJSON(data["schedule"]), alternatives: alternatives);
  }

  @override
  String toString() {
    List<String> list = [];
    for (var item in alternatives) {
      list.add(item.toString());
    }
    String alterStr = list.join("\n");
    return "schedule: ${schedule.toString()}\nalternatives: $alterStr";
  }
}
