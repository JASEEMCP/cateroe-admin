import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/resource/utils/common_lib.dart';

class CustomUserCard extends StatelessWidget {
  const CustomUserCard({
    super.key,
    this.buttonName, required this.onTap,
  });
  final String? buttonName;
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
                    txt: 'User Name',
                    fontWeight: FontWeight.w500,
                    color: context.theme.kSecondaryLight,
                    fontSize: 18,
                  ),
                  IconButton.filled(
                    style: TextButton.styleFrom(
                      backgroundColor: context.theme.kBlack.withValues(
                        alpha: 0.1,
                      ),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: context.theme.kSecondaryLight,
                      size: 28,
                    ),
                  ),
                ],
              ),

              CustomText(
                txt: 'Junior',
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
                  icon: Icons.stars,
                  color: Colors.green,
                  txt: '4.9 Rating',
                ),
              ),
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.work,
                  txt: '10 Works',
                  color: Colors.orange,
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
                  icon: Icons.call,
                  txt: '+91 6754387643',
                  color: Colors.indigo,
                ),
              ),
              Expanded(
                child: _buildIconText(
                  context,
                  icon: Icons.badge,
                  txt: 'Supervisor',
                  color: Colors.red,
                  txtColor: Colors.red,
                ),
              ),
            ],
          ),
          Gap(inset.sm),
          Row(
            spacing: inset.xs,
            children: [
              Expanded(
                child: CustomButton(
                  text: buttonName ?? 'Edit',
                  textColor: context.theme.kPrimaryGold,
                  bgColor: context.theme.kSecondaryLight,
                  onTap: onTap,
                ),
              ),
              Expanded(
                child: CustomButton(
                  text: 'Delete',
                  textColor: Colors.red,
                  bgColor: context.theme.kBlack.withValues(alpha: 0.05),
                  onTap: () {},
                ),
              ),
            ],
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
