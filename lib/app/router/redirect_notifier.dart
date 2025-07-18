import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/presentation/controller/onboarding/onboarding_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/redirect_notifier.g.dart';

@Riverpod(keepAlive: true)
AppRedirectNotifier appRedirectNotifier(Ref ref) {
  return AppRedirectNotifier(ref: ref);
}

class AppRedirectNotifier extends ChangeNotifier {
  AppRedirectNotifier({required Ref<Object?> ref}) : _ref = ref {
    _ref.listen(
      onboardingControllerProvider.select((state) => state.isSplashComplete),
      (_, __) {
        notifyListeners();
      },
    );
    _ref.listen(
      onboardingControllerProvider.select((state) => state.isOnboadingComplete),
      (_, __) {
        notifyListeners();
      },
    );
  }

  final Ref _ref;
}
