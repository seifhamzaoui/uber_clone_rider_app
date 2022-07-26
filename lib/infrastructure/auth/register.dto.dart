import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/auth/user_entity.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
part 'register.dto.freezed.dart';
part 'register.dto.g.dart';

@freezed
abstract class RegisterDto implements _$RegisterDto {
  const RegisterDto._();
  const factory RegisterDto({
    @Default('') @JsonKey(ignore: true) String userId,
    required String fullName,
    required String email,
    required String phone,
    @Default('') @JsonKey(ignore: true) String password,
  }) = _RegisterDto;
  factory RegisterDto.fromJson(Map<String, dynamic> json) => _$RegisterDtoFromJson(json);

  UserEntity toUserEntity() => UserEntity(
        uid: UniqueId.fromUniqueId(userId),
        emailAdress: EmailAdress(email),
        fullName: FullName(fullName),
        phoneNumber: PhoneNumber(phone),
      );
  factory RegisterDto.fromUserEntity(UserEntity user) {
    return RegisterDto(
      fullName: user.fullName.getOrCrash(),
      email: user.emailAdress.getOrCrash(),
      phone: user.phoneNumber.getOrCrash(),
      userId: user.uid.getOrCrash(),
    );
  }
}
