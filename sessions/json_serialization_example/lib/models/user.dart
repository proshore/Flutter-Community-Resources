import 'package:json_annotation/json_annotation.dart';
import 'package:json_serialization_example/models/address.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String name, email;
  Address address;

  User({
    required this.name,
    required this.email,
    required this.address,
  });

  /// Created For Automated Json Serialization
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  /// Manually created
  factory User.fromModelJson(Map<String, dynamic> data) {
    return User(
      name: data['name'],
      email: data['email'],
      address: Address.fromJson(data['address']),
    );
  }

  Map<String, dynamic> toModelJson() {
    return {
      "name": name,
      "email": email,
      "address": address,
    };
  }
}
