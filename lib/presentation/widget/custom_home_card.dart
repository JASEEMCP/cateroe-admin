import 'package:app/resource/utils/common_lib.dart';

class CustomHomeCard extends StatelessWidget {
  const CustomHomeCard({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.iconColor,
    this.txtColor,
  });
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final Color? iconColor;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Container(
      //height: 100,
      width: context.mq.width / 2,
      padding: EdgeInsets.all(inset.sm),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 221, 212, 212),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: inset.xs,
        children: [
          Icon(
            icon ?? Icons.trending_up_rounded,
            color: iconColor ?? Colors.green,
            size: 35,
          ),
          CustomText(
            txt: title ?? '32,000',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          CustomText(txt: subtitle ?? 'Revenue'),
        ],
      ),
    );
  }
}
