import 'day.dart';

class Schedule {
  final Day monday;
  final Day tuesday;
  final Day wednesday;
  final Day thursday;
  final Day friday;
  final Day saturday;

  Schedule(
      {this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      this.saturday});

  factory Schedule.fromJSON(Map<String, dynamic> data) {
    return Schedule(
      monday: (data["lundi"] == null) ? null : Day.fromJSON(data["lundi"]),
      tuesday: (data["mardi"] == null) ? null : Day.fromJSON(data["mardi"]),
      wednesday:
          (data["mercredi"] == null) ? null : Day.fromJSON(data["mercredi"]),
      thursday: (data["jeudi"] == null) ? null : Day.fromJSON(data["jeudi"]),
      friday:
          (data["vendredi"] == null) ? null : Day.fromJSON(data["vendredi"]),
      saturday: (data["samedi"] == null) ? null : Day.fromJSON(data["samedi"]),
    );
  }

  @override
  String toString() {
    return "monday: ${monday.toString()}\ntuesday: ${tuesday.toString()}\nwednesday: ${wednesday.toString()}\nthursday: ${thursday.toString()}\nfriday: ${friday.toString()}\nsaturday: ${saturday.toString()}\n";
  }
}
