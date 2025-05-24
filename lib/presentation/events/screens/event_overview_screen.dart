import 'package:app/resource/utils/common_lib.dart';

class EventOverviewScreen extends StatelessWidget {
  const EventOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          txt: 'Event Overview',
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(inset.sm),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(inset.sm),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 221, 212, 212),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
                color: context.theme.kWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                spacing: inset.xxs,
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
                  Divider(color: context.theme.kBlack.withValues(alpha: 0.1)),

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

                  Gap(inset.xs),
                  Row(
                    children: [
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.man,
                          txt: '35 Boys',
                        ),
                      ),
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.accessible,
                          txt: 'Sitting',
                        ),
                      ),
                    ],
                  ),
                  Gap(inset.xs),
                  Row(
                    children: [
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.corporate_fare,
                          txt: 'Catering Company',
                        ),
                      ),
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.people,
                          txt: '3000 People',
                        ),
                      ),
                    ],
                  ),
                  Divider(color: context.theme.kBlack.withValues(alpha: 0.1)),
                  CustomText(
                    txt: 'Rate',
                    fontWeight: FontWeight.w500,
                    color: context.theme.kSecondaryLight,
                    fontSize: 18,
                  ),
                  _buildIconText(
                    context,
                    icon: Icons.badge,
                    txt: 'Captain : ₹500',
                    color: Colors.orange,
                  ),
                  Gap(inset.xs),
                  Row(
                    children: [
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.circle,

                          txt: 'Supervisor : ₹450',
                        ),
                      ),
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.circle,
                          txt: 'Senior : ₹400',
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.circle,
                          txt: 'Normal : ₹350',
                        ),
                      ),
                      Expanded(
                        child: _buildIconText(
                          context,
                          icon: Icons.circle,
                          txt: 'Junior : ₹300',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(inset.xs),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(inset.sm),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 221, 212, 212),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
                color: context.theme.kWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: inset.xs,
                children: [
                  CustomText(
                    txt: 'Captain Name',
                    color: context.theme.kSecondary,
                    fontWeight: FontWeight.bold,
                  ),
                  for (int i = 0; i < 7; i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          txt: 'Boy Name (Junior)',
                          color: Colors.indigo,
                          fontWeight: FontWeight.w400,
                        ),
                        _buildIconText(
                          context,
                          icon: Icons.stars,
                          txt: '5.3 Rating',
                          color: Colors.green,
                        ),
                        Divider(),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
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
