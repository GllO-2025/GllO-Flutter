import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/onboarding_state.freezed.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  factory OnboardingState({
    @Default(false) bool isOnboadingComplete,
    @Default(false) bool isSplashComplete,
  }) = _OnboardingState;
}
