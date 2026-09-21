import 'package:examy/core/base_state/base_state.dart';
import 'package:examy/feature/auth/domain/entities/auth_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    BaseState<AuthResponseEntity>? loginState,
  }) = _LoginState;

  factory LoginState.initial() {
    return LoginState(loginState: const BaseState<AuthResponseEntity>());
  }
}
