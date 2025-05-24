import 'package:app/presentation/widget/custom_event_card.dart';
import 'package:app/presentation/widget/custom_home_card.dart';
import 'package:app/resource/utils/common_lib.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: context.theme.kBlack.withValues(alpha: 0.1),
            height: 1,
          ),
        ),

        title: Row(
          spacing: inset.xs,
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.theme.kWhite,
                border: Border.all(
                  color: context.theme.kPrimaryGold!,
                ),
              ),
              //child: Icon(Icons.account_circle),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  txt: 'Jaseem',
                  color: context.theme.kPrimaryGold,
                ),
                CustomText(
                  txt: 'Admin',
                  color: context.theme.kBlack.withValues(alpha: 0.5),
                  fontSize: 14,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(inset.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: inset.sm,
          children: [
            Row(
              spacing: inset.sm,
              children: [
                Expanded(child: CustomHomeCard()),

                Expanded(
                  child: CustomHomeCard(
                    title: '100',
                    subtitle: 'Events',
                    icon: Icons.event,
                    iconColor: Colors.indigo,
                  ),
                ),
              ],
            ),
            Row(
              spacing: inset.sm,
              children: [
                Expanded(
                  child: CustomHomeCard(
                    title: '250',
                    subtitle: 'Boys',
                    icon: Icons.people,
                    iconColor: Colors.red,
                  ),
                ),

                Expanded(
                  child: CustomHomeCard(
                    title: '3',
                    subtitle: 'Ongoing',
                    icon: Icons.pending,
                    iconColor: Colors.orange,
                  ),
                ),
              ],
            ),
            CustomText(
              txt: 'Ongoing Works',
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
            CustomEventCard(
              btnName: 'Edit Event',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
