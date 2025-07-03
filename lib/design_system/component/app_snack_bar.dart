import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/toast/toast_manager.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/shadow/app_shadow.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Snack Bar
/// [ToastManager]를 이용하여 제어
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-25808&m=dev
class AppSnackBar extends StatelessWidget {
  const AppSnackBar({
    required this.text,
    required this.action,
    this.imageUrl,
    super.key,
  });
  final String? imageUrl;
  final String text;
  final AppSnackBarAction action;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        color: AppScaleColor.white100,
        borderRadius: BorderRadius.circular(AppLayout.radius300),
        boxShadow: [AppShadow.shadow12],
      ),
      padding: const EdgeInsets.all(AppLayout.marginPaddingS),
      child: Row(
        children: [
          if (imageUrl != null)
            CachedNetworkImage(
              imageUrl: imageUrl!,
              imageBuilder: (context, imageProvider) {
                return Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.radius200),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              // TODO: placeholder 수정 예정
              placeholder:
                  (context, url) => const CircularProgressIndicator(
                    color: AppScaleColor.orange500,
                  ),
              // TODO: placeholder 수정 예정
              errorWidget:
                  (context, url, error) =>
                      const Icon(Icons.error, color: AppScaleColor.red),
            ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: imageUrl != null ? 8 : 0),
              child: Text(
                text,
                style: AppTextStyle.textSm.copyWith(
                  color: AppScaleColor.gray600,
                ),
                maxLines: 1,
              ),
            ),
          ),
          action,
        ],
      ),
    );
  }
}

/// Snack Bar Action Button
class AppSnackBarAction extends StatelessWidget {
  /// action type : undo
  const AppSnackBarAction.undo({
    required this.onTap,
    this.text = 'undo',
    super.key,
  }) : type = _AppSnackBarActionType.undo;

  /// action type : close
  const AppSnackBarAction.close({required this.onTap, super.key})
    : type = _AppSnackBarActionType.close,
      text = null;

  // ignore: library_private_types_in_public_api
  final _AppSnackBarActionType type;
  final VoidCallback? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child:
            type == _AppSnackBarActionType.undo
                ? Text(
                  text!,
                  style: AppTextStyle.textSr.copyWith(color: AppScaleColor.red),
                )
                : Assets.icon.system.closeLine.svg(
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                    AppScaleColor.gray400,
                    BlendMode.srcIn,
                  ),
                ),
      ),
    );
  }
}

/// Snack Bar Action Button Type
/// 내부적으로 사용되어서 Private하게 선언
enum _AppSnackBarActionType { undo, close }
