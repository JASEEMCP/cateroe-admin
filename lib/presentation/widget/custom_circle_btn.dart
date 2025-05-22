



import 'package:app/resource/utils/common_lib.dart';
import 'package:app/resource/utils/extensions.dart';

class CustomCircleBtn extends StatelessWidget {
  const CustomCircleBtn({
    super.key,
    required this.onTap,
    this.icon,
    this.radius,
    this.disableBorder,
  });

  final Function() onTap;
  final IconData? icon;
  final double? radius;
  final bool? disableBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: radius ?? 35,
        height: radius ?? 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: disableBorder ?? false
              ? null
              : Border.all(
                  color: context.theme.kBlack.withOpacity(0.2),
                ),
          color: context.theme.kWhite,
        ),
        child: Icon(
          icon ?? Icons.arrow_back,
          color: context.theme.kBlack.withOpacity(0.5),
        ),
      ),
    );
  }
}
