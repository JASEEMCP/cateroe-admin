import 'package:app/resource/utils/common_lib.dart';

class MenuItem {
  final String id;
  final String label;

  MenuItem(this.id, this.label);
}

class CustomDropDownSearch extends StatelessWidget {
  const CustomDropDownSearch({
    super.key,
    this.controller,
    this.label,
    this.hintText,
    required this.menu,
    this.radius,
    required this.onSelect,
    this.enableController,
    this.validate = false,
    this.enableFilter,
    this.width,
    this.validator,
    this.enabled,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final List<MenuItem> menu;
  final double? radius;
  final Function(MenuItem?) onSelect;
  final bool? enableController;
  final bool? validate;
  final bool? enableFilter;
  final double? width;
  final bool? enabled;
  final Function(String?)? onChanged;
  final String Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final style = $style.text;
    final inset = $style.insets;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          CustomText(
            txt: label!,
            fontSize: 14,

            color: context.theme.kSecondary,
          ),
        Gap(inset.xxs),

        DropdownMenu<MenuItem>(
          enabled: enabled ?? true,

          textStyle: $style.text.textN14.copyWith(
            color: context.theme.kSecondary,
          ),
          initialSelection: null,
          controller: controller,
          expandedInsets: EdgeInsets.zero,
          width: width,
          menuStyle: MenuStyle(
            backgroundColor: WidgetStatePropertyAll(context.theme.kWhite),
            surfaceTintColor: WidgetStatePropertyAll(context.theme.kWhite),
          ),
          hintText: hintText,
          requestFocusOnTap: enableController ?? true,
          enableFilter: enableFilter ?? false,
          selectedTrailingIcon: Icon(
            Icons.arrow_drop_up,
            color: context.theme.kSecondary,
            size: 30,
          ),
          menuHeight: 200,
          trailingIcon: Icon(
            Icons.arrow_drop_down_outlined,
            color: context.theme.kSecondary,
            size: 30,
          ),
          onSelected: onSelect,
          dropdownMenuEntries: menu.map<DropdownMenuEntry<MenuItem>>((
            MenuItem menu,
          ) {
            return DropdownMenuEntry<MenuItem>(
              value: menu,
              label: menu.label,
              style: TextButton.styleFrom(
                foregroundColor: context.theme.kBlack.withValues(alpha: 0.7),
                textStyle: $style.text.textN14.copyWith(),
              ),
            );
          }).toList(),
          inputDecorationTheme: InputDecorationTheme(
            errorMaxLines: 3,
            errorStyle: style.textN14,
            suffixIconColor: context.theme.kSecondary,
            filled: true,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: inset.sm,
              //vertical: inset.xs,
            ),
            fillColor: context.theme.kWhite,
            hintStyle: style.textN14.copyWith(
              color: context.theme.kSecondary,
            ),
            disabledBorder: _buildInputBorder(context, radius),
            focusedErrorBorder: _buildInputBorder(context, radius),
            focusedBorder: _buildInputBorder(context, radius),
            errorBorder: _buildInputBorder(context, radius),
            enabledBorder: _buildInputBorder(context, radius),
            border: _buildInputBorder(context, radius),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildInputBorder(BuildContext context, double? radius) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius ?? 10),
      borderSide: BorderSide(
        color: context.theme.kBlack.withOpacity(0.1),
      ),
    );
  }
}
