import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/resource/utils/common_lib.dart';

class CustomEventCard extends StatelessWidget {
  const CustomEventCard({
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
          Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            spacing: inset.xs,
            children: [
              // Icon(
              //   Icons.event_note,
              //   color: Colors.indigo,
              //   size: 28,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    txt: 'Event Name',
                    fontWeight: FontWeight.w500,
                    color: context.theme.kSecondaryLight,
                    fontSize: 18,
                  ),
                  CustomText(
                    txt: 'Kannur,Kerala',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ],
              ),
            ],
          ),
          Divider(),
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
            text: 'View Event',
            textColor: context.theme.kPrimaryGold,
            bgColor: context.theme.kSecondaryLight,
            onTap: () {},
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
