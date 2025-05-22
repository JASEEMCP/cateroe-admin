

import 'package:app/resource/utils/common_lib.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine,
  });
  final String txt;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textScaler: const TextScaler.linear(1),
      maxLines: maxLine,
      style: $style.text.textSBold14.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.txt,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine, this.onTap,
  });
  final String txt;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        txt,
        textScaler: const TextScaler.linear(1),
        maxLines: maxLine,
        style: $style.text.textSBold12.copyWith(
          color: color ?? Colors.indigo,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
