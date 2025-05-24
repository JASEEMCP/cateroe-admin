import 'dart:ui';

import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_circle_btn.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/resource/utils/common_lib.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.txt,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.maxLine,
    this.overflow,
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

Future<dynamic> customAlertBox(
  BuildContext context, {
  Function()? onTap,
  String? title,
  String? content,
}) {
  return showDialog(
    context: context,
    builder: (ctx) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

        child: AlertDialog(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                fontSize: 18,
                color: Colors.indigo,
                txt: title ?? 'Payment Option',
              ),
              CustomCircleBtn(
                icon: Icons.close_rounded,
                onTap: () {
                  context.pop();
                },
              ),
            ],
          ),
          scrollable: true,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextFieldWidget(label: 'Remark'),
              RadioListTile(
                value: 'cash',
                groupValue: 'cash',
                title: CustomText(txt: 'CASH'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                onChanged: (v) {},
              ),
              RadioListTile(
                value: 'bank',
                groupValue: 'cash',
                title: CustomText(txt: 'BANK'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                onChanged: (v) {},
              ),
            ],
          ),
          actions: [
            CustomButton(
              text: 'Confirm',
              bgColor: Colors.green,
              onTap: onTap ?? () {},
            ),
          ],
        ),
      );
    },
  );
}
