import 'dart:convert';

import 'package:equatable/equatable.dart';

class CustomCalendar extends Equatable {
  const CustomCalendar({required this.day, required this.type});
  final int day;
  final String type;
  @override
  List<Object?> get props => [day, type];

  Map<String, dynamic> toMap() {
    return {
      'day': day,
      'type': type,
    };
  }

  factory CustomCalendar.fromMap(Map<String, dynamic> map) {
    return CustomCalendar(
      day: map['day'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomCalendar.fromJson(String source) =>
      CustomCalendar.fromMap(json.decode(source));
}
