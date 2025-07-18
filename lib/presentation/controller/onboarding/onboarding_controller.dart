import 'package:gllo_flutter/presentation/controller/onboarding/onboarding_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'generated/onboarding_controller.g.dart';

@Riverpod(keepAlive: true)
class OnboardingController extends _$OnboardingController {
  final _onboardingCompleteKey = 'onboardingComplete';

  @override
  OnboardingState build() {
    return OnboardingState();
  }

  /// 스플래시 완료 여부 수정
  void updateSplashComplete({required bool isComplete}) {
    state = state.copyWith(isSplashComplete: isComplete);
  }

  /// 온보딩 완료 여부 확인
  Future<void> checkOnboadingComplete() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final result = prefs.getBool(_onboardingCompleteKey);
      state = state.copyWith(isOnboadingComplete: result ?? false);
    } catch (e) {
      state = state.copyWith(isOnboadingComplete: false);
    }
  }

  /// 온보딩 완료 여부 설정
  Future<void> completeOnboarding() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_onboardingCompleteKey, true);
      state = state.copyWith(isOnboadingComplete: true);
    } catch (e) {
      state = state.copyWith(isOnboadingComplete: false);
    }
  }
}
