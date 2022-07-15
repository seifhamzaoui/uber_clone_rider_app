import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required UniqueId uid,
    required EmailAdress emailAdress,
    required FullName fullName,
    required PhoneNumber phoneNumber,
  }) = _UserEntity;

  factory UserEntity.empty() => UserEntity(
        uid: UniqueId.fromUniqueId(''),
        emailAdress: EmailAdress(''),
        fullName: FullName(''),
        phoneNumber: PhoneNumber(''),
      );
}
