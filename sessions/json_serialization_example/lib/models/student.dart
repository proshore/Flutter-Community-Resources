import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

@JsonSerializable()
class Student {
  String? name;
  String? rollNo;

  Student(
    this.name,
    this.rollNo,
  );

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);

  Map<String, dynamic> toJson() => _$StudentToJson(this);

  @override
  String toString() {
    return 'SerializationExample{name: $name, rollNo: $rollNo}';
  }
}
