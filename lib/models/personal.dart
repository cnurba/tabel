import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:tabel/models/calendar.dart';
import 'package:tabel/models/division.dart';
import 'package:tabel/models/position.dart';

class Personal extends Equatable {
  final String id;
  final String code;
  final String name;
  final Position position;
  final Division division;
  final String birthday;
  final String sex;
  final String beginDate;
  final String endDate;
  final List<CustomCalendar> calendar;

  Personal({
    required this.id,
    required this.code,
    required this.name,
    required this.position,
    required this.division,
    required this.birthday,
    required this.sex,
    required this.calendar,
    required this.beginDate,
    required this.endDate,
  });

  @override
  List<Object?> get props => [id];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'name': name,
      'position': position.toMap(),
      'division': division.toMap(),
      'birthday': birthday,
      'sex': sex,
      'beginDate': beginDate,
      'endDate': endDate,
      'calendar': calendar.map((x) => x.toMap()).toList(),
    };
  }

  factory Personal.fromMap(Map<String, dynamic> map) {
    return Personal(
      id: map['id'],
      code: map['code'],
      name: map['name'],
      position: Position.fromMap(map['position']),
      division: Division.fromMap(map['division']),
      birthday: map['birthday'],
      sex: map['sex'],
      beginDate: map['beginDate'],
      endDate: map['endDate'],
      calendar: List<CustomCalendar>.from(
          map['calendar']?.map((x) => CustomCalendar.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Personal.fromJson(String source) =>
      Personal.fromMap(json.decode(source));
}
