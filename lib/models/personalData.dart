import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:tabel/models/personal.dart';

import 'user.dart';

class PersonalData extends Equatable {
  final String month;
  final bool hasError;
  final List<Personal> data;
  final User user;
  final String message;

  PersonalData({
    required this.month,
    required this.hasError,
    required this.data,
    required this.user,
    required this.message,
  });

  @override
  List<Object?> get props => [month, hasError];

  Map<String, dynamic> toMap() {
    return {
      'month': month,
      'hasError': hasError,
      'data': data.map((x) => x.toMap()).toList(),
      'user': user.toMap(),
      'message': message,
    };
  }

  factory PersonalData.fromMap(Map<String, dynamic> map) {
    return PersonalData(
      month: map['month'],
      hasError: map['hasError'],
      data: List<Personal>.from(map['data']?.map((x) => Personal.fromMap(x))),
      user: User.fromMap(map['user']),
      message: map['message'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PersonalData.fromJson(String source) =>
      PersonalData.fromMap(json.decode(source));
}
