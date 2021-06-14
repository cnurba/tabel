import 'dart:convert';

import 'package:equatable/equatable.dart';

class Division extends Equatable {
  final String id;
  final String name;

  Division(this.id, this.name);

  @override
  List<Object?> get props => [id];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory Division.fromMap(Map<String, dynamic> map) {
    return Division(
      map['id'],
      map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Division.fromJson(String source) =>
      Division.fromMap(json.decode(source));
}
