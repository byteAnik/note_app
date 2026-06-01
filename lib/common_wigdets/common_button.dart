import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/constants/app_colors.dart';
import 'package:note_app/constants/text_font_style.dart';


class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  final bool isOutlined;
  final Color? borderColor;
  final double borderWidth;

  final double? width;
  final double? height;

  final TextStyle? textStyle;
  final bool isDisabled;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double iconSpacing;

  const CommonButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.c1A1A1A,
    this.textColor = AppColors.cFFFFFF,
    this.borderRadius = 14,
    this.isOutlined = false,
    this.borderColor,
    this.borderWidth = 1,
    this.width,
    this.height,
    this.textStyle,
    this.isDisabled = false,
    this.prefixIcon,
    this.suffixIcon,
    this.iconSpacing = 8,
  });

  @override
  Widget build(BuildContext context) {
    final Color effectiveBgColor =
        isOutlined ? Colors.transparent : backgroundColor;

    final Color effectiveTextColor =
        isOutlined ? (borderColor ?? AppColors.c1A1A1A) : textColor;

    final Color effectiveBorderColor =
        isOutlined ? (borderColor ?? AppColors.c1A1A1A) : Colors.transparent;

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 52.h,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: isDisabled
              ? effectiveBgColor.withOpacity(0.5)
              : effectiveBgColor,
          disabledBackgroundColor: effectiveBgColor.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            side: BorderSide(
              color: effectiveBorderColor,
              width: borderWidth,
            ),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
              SizedBox(width: iconSpacing.w),
            ],
            Text(
              text,
              style: (textStyle ?? TextFontStyle.textStylec24cAsap500c181B25)
                  .copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: effectiveTextColor,
              ),
            ),
            if (suffixIcon != null) ...[
              SizedBox(width: iconSpacing.w),
              suffixIcon!,
            ],
          ],
        ),
      ),
    );
  }
}