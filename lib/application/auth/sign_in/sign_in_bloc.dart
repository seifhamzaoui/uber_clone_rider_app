import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@Injectable()
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(_Initial()) {
    on<SignInEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
