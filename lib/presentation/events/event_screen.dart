import 'package:app/presentation/widget/custom_event_card.dart';
import 'package:app/resource/utils/common_lib.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: CustomText(
                txt: 'Events',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    context.go(ScreenPath.eventDetail());
                  },
                  icon: Icon(
                    Icons.add_circle_rounded,
                    size: 35,
                  ),
                  color: Colors.indigo,
                ),
                Gap(inset.sm),
              ],
              pinned: true,
              floating: true,
              bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                labelStyle: $style.text.textN14.copyWith(
                  color: Colors.indigo,
                ),
                unselectedLabelStyle: $style.text.textN14.copyWith(
                  color: Colors.grey,
                ),
                tabs: [
                  Tab(
                    text: 'Ongoing',

                    icon: Icon(
                      Icons.timeline,
                      color: Colors.indigo,
                    ),
                  ),
                  Tab(
                    text: 'Completed',
                    icon: Icon(
                      Icons.event_available,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              _buildEventList('Edit Event'),
              _buildEventList('View Event'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventList(String btnName) {
    final inset = $style.insets;
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => Gap(inset.sm),
      padding: EdgeInsets.all(inset.sm),
      itemBuilder: (ctx, index) {
        return CustomEventCard(
          btnName: btnName,
          onTap: () {
            ctx.go(ScreenPath.eventOverview());
          },
        );
      },
    );
  }
}
