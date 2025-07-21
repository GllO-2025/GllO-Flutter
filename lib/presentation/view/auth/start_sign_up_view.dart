import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/localization/locale_keys.g.dart';
import 'package:gllo_flutter/design_system/component/app_button.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class StartSignUpView extends StatefulWidget {
  const StartSignUpView({super.key});

  @override
  State<StartSignUpView> createState() => _StartSignUpViewState();
}

class _StartSignUpViewState extends State<StartSignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.png.appLogoPrimary.image(),
                    const SizedBox(height: 24),
                    Text(
                      context.tr(LocaleKeys.startSignUp_title),
                      style: AppTextStyle.textLr.copyWith(
                        color: AppScaleColor.orange500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 48),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        label: LocaleKeys.startSignUp_signUpButtonText.tr(),
                        size: AppButtonSize.large,
                        style: AppButtonStyle.primary,
                        onPressed: () {
                          // TODO: 회원가입 페이지로 이동
                        },
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        label: LocaleKeys.startSignUp_signInButtonText.tr(),
                        size: AppButtonSize.large,
                        style: AppButtonStyle.secondary,
                        onPressed: () {
                          // TODO: 로그인 페이지로 이동
                        },
                      ),
                    ),
                    const SizedBox(height: 27.5),
                    GestureDetector(
                      onTap: () {
                        // TODO: 아이디/비밀번호 찾기 페이지로 이동
                      },
                      child: Text(
                        LocaleKeys.startSignUp_findAccount.tr(),
                        style: AppTextStyle.textSr.copyWith(
                          color: AppScaleColor.gray500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom,
              ),
              child: Container(
                padding: const EdgeInsets.all(AppLayout.marginPaddingL),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      LocaleKeys.startSignUp_socialSignInDesc.tr(),
                      style: AppTextStyle.textSr.copyWith(
                        color: AppScaleColor.gray500,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // TODO: 구글 로그인 시도
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppLayout.radius300,
                              ),
                              border: Border.all(color: AppScaleColor.gray200),
                              color: AppScaleColor.white100,
                            ),
                            child: Center(child: Assets.png.googleLogo.image()),
                          ),
                        ),
                        const SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {
                            // TODO: 애플 로그인 시도
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppLayout.radius300,
                              ),
                              color: AppScaleColor.black100,
                            ),
                            child: Center(child: Assets.png.appleLogo.image()),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
