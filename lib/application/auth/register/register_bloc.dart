// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/auth_failure.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@Injectable()
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) {
      event.map(
        fullnameChanged: (e) {
          emit(state.copyWith(fullName: FullName(e.fullnameStr)));
        },
        emailChanged: (e) async {
          emit(state.copyWith(emailAdress: EmailAdress(e.emailStr)));
        },
        phoneNumberChanged: (e) async {
          emit(state.copyWith(phoneNumber: PhoneNumber(e.phoneStr)));
        },
        passwordChanged: (e) async {
          emit(state.copyWith(password: Password(e.passwordStr)));
        },
        register: (e) async {
          emit(state.copyWith(showErrors: true, failureorsuccess: none()));
        },
      );
    });
  }
}
