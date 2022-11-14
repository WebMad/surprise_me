import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory User({
    required String id,
    required String name,
    required String login,
  }) = _User;

  factory User.fromFirebaseUser(firebase_auth.User firebaseUser) => _User(
        id: firebaseUser.uid,
        login: firebaseUser.email!,
        name: firebaseUser.displayName ?? "No name",
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
