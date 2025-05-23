import 'package:app/resource/utils/common_lib.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine, this.overflow,
  });
  final String txt;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLine;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Text(
      txt,
      textScaler: const TextScaler.linear(1),
      maxLines: maxLine,
      style: $style.text.textN16.copyWith(
        color: color,
        fontSize: fontSize != null ? inset.customSize(fontSize!) : null,
        fontWeight: fontWeight,
        overflow: overflow,
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
    this.maxLine,
    this.onTap,
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
