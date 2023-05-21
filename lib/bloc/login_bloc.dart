import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth/login_auth.dart';

import '../models/user_model.dart';

//** EVENT */
class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final String email;
  final String password;

  LoginButtonPressed({required this.email, required this.password});
}

//** STATE */
class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({required this.error});
}

class LoginSuccess extends LoginState {
  final User user;

  LoginSuccess({required this.user});
}

//** BLOC */
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;

  LoginBloc({required this.userRepository}) : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      try {
        final user = await userRepository.authenticate(
          email: event.email,
          password: event.password,
        );

        emit(LoginSuccess(user: user));
      } catch (error) {
        emit(LoginFailure(error: error.toString()));
      }
    });
  }
}


