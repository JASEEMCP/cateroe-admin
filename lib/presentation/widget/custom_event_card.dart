import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/resource/utils/common_lib.dart';

class CustomEventCard extends StatelessWidget {
  const CustomEventCard({
    super.key,
    required this.onTap,
  });
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Container(
      //height: 100,
      width: context.mq.width,
      padding: EdgeInsets.all(inset.sm),
      decoration: BoxDecoration(
        color: context.theme.kWhite,
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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    txt: 'Event Name',
                    fontWeight: FontWeight.w500,
                    color: context.theme.kSecondaryLight,
                    fontSize: 18,
                  ),
                  // Icon(
                  Icon(
                    Icons.pending,
                    color: Colors.indigo,
                    size: 28,
                  ),
                ],
              ),

              CustomText(
                txt: 'Kannur,Kerala',
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ],
          ),
          Divider(color: context.theme.kBlack.withValues(alpha: 0.1)),
          Gap(inset.xs),
          _buildIconText(
            context,
            icon: Icons.badge,
            txt: 'Caption Name',
            color: Colors.green,
          ),
          Gap(inset.sm),
          Row(
            children: [
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.calendar_month,
                  txt: 'Aug 6, 2023',
                ),
              ),
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.timer,
                  txt: '10:00 AM - 04:00 PM',
                ),
              ),
            ],
          ),

          Gap(inset.sm),
          Row(
            children: [
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.man,
                  txt: '35 Boys',
                ),
              ),
            ],
          ),
          Gap(inset.sm),
          CustomButton(
            text: 'Edit Event',
            textColor: context.theme.kPrimaryGold,
            bgColor: context.theme.kSecondaryLight,
            onTap: onTap,
          ),
        ],
      ),
    );
  }

  Row _buildIconText(
    BuildContext context, {
    required IconData icon,
    required String txt,
    Color? color,
  }) {
    final inset = $style.insets;
    return Row(
      spacing: inset.xs,
      children: [
        Icon(
          icon,
          color: color ?? context.theme.kSecondaryLight,
          size: 20,
        ),
        CustomText(
          txt: txt,
          color: context.theme.kSecondary,
          fontSize: 12,
        ),
      ],
    );
  }
}

class CustomTransactionCard extends StatelessWidget {
  const CustomTransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Container(
      //height: 100,
      width: context.mq.width,
      padding: EdgeInsets.all(inset.sm),
      decoration: BoxDecoration(
        color: context.theme.kWhite,
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
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    txt: 'Event Name',
                    fontWeight: FontWeight.w500,
                    color: context.theme.kSecondaryLight,
                    fontSize: 18,
                  ),
                  // Icon(
                  // Icon(
                  //   Icons.pending,
                  //   color: Colors.indigo,
                  //   size: 28,
                  // ),
                ],
              ),

              CustomText(
                txt: 'Kannur,Kerala',
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ],
          ),
          Divider(color: context.theme.kBlack.withValues(alpha: 0.1)),
          Gap(inset.xs),

          Row(
            children: [
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.calendar_month,
                  txt: 'Aug 6, 2023',
                ),
              ),
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.timer,
                  txt: '10:00 AM - 04:00 PM',
                ),
              ),
            ],
          ),

          Gap(inset.sm),
          Row(
            children: [
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.man,
                  txt: '20 Payment Pending',
                  color: Colors.red,
                  txtColor: Colors.red,
                ),
              ),
            ],
          ),
          Gap(inset.sm),
          CustomButton(
            text: 'Pending List',
            textColor: context.theme.kPrimaryGold,
            bgColor: context.theme.kSecondaryLight,
            onTap: () {
              context.go(ScreenPath.paymentList());
            },
          ),
        ],
      ),
    );
  }

  Row _buildIconText(
    BuildContext context, {
    required IconData icon,
    required String txt,
    Color? color,
    Color? txtColor,
  }) {
    final inset = $style.insets;
    return Row(
      spacing: inset.xs,
      children: [
        Icon(
          icon,
          color: color ?? context.theme.kSecondaryLight,
          size: 20,
        ),
        CustomText(
          txt: txt,
          color: txtColor ?? context.theme.kSecondary,
          fontSize: 12,
        ),
      ],
    );
  }
}
