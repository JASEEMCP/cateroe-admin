import 'package:app/resource/utils/common_lib.dart';
import 'package:flutter/services.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.obscureText,
    this.controller,
    this.validator,
    required this.label,
    this.suffix,
    this.type,
    this.inputFormatters,
    this.hint,
  });

  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String? p1)? validator;
  final String label;
  final String? hint;
  final Widget? suffix;
  final TextInputType? type;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          txt: label,
          fontSize: 14,

          color: context.theme.kSecondary,
        ),
        Gap(inset.xxs),
        TextFormField(
          inputFormatters: inputFormatters,
          keyboardType: type,
          obscureText: obscureText ?? false,
          controller: controller,
          validator: validator,
          style: $style.text.textN14.copyWith(),
          decoration: InputDecoration(
            hintText: hint ?? label,
            suffixIcon: suffix,
            hintStyle: $style.text.textN14.copyWith(),
            contentPadding: const EdgeInsets.all(12),
            border: _applyBorder(context),
            focusedBorder: _applyBorder(context),
            enabledBorder: _applyBorder(context),
            errorBorder: _applyBorder(context),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _applyBorder(BuildContext context) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: context.theme.kBlack.withOpacity(0.2),
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
