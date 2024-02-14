import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, emit) {
      try {
        final email = event.email;
        final password = event.password;
        // Replace with authentication logic
        if (email == 'admin' && password == 'admin') {
          return emit(AuthSuccess(email));
        } else {
          return emit(AuthFailure('Invalid email or password'));
        }
      } catch (e) {
        return emit(AuthFailure(e.toString()));
      }
    });
  }
}
