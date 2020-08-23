import 'schedule.dart';

class Group {
  final String id;
  final Schedule group1;
  final Schedule group2;

  Group({this.id, this.group1, this.group2});

  factory Group.fromJSON(Map<String, dynamic> data) {
    return Group(
        id: data["id"] as String,
        group1: Schedule.fromJSON(data["group1"]),
        group2: Schedule.fromJSON(data["group2"]));
  }

  @override
  String toString() {
    return "id: $id\ngroup1: ${group1.toString()}\ngroup2: ${group2.toString()}";
  }
}
