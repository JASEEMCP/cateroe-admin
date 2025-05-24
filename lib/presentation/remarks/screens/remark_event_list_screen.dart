import 'package:app/presentation/widget/custom_remark_event_card.dart';
import 'package:app/resource/utils/common_lib.dart';

class RemarkEventEventListScreen extends StatelessWidget {
  const RemarkEventEventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: CustomText(
                txt: 'Events List',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),

              pinned: true,
              floating: true,
            ),
          ],
          body: _buildEventList(),
        ),
      ),
    );
  }

  Widget _buildEventList() {
    final inset = $style.insets;
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (context, index) => Gap(inset.sm),
      padding: EdgeInsets.all(inset.sm),
      itemBuilder: (ctx, index) {
        return CustomRemarkEventCard();
      },
    );
  }
}
