import 'package:app/presentation/widget/custom_user_card.dart';
import 'package:app/resource/utils/common_lib.dart';

class RemarksScreen extends StatelessWidget {
  const RemarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: CustomText(
                txt: 'Remarks',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),

              pinned: true,
              floating: true,
              // bottom: PreferredSize(
              //   preferredSize: Size(double.maxFinite, 70),
              //   child: Padding(
              //     padding: EdgeInsets.all(inset.sm),
              //     child: CupertinoSearchTextField(),
              //   ),
              // ),
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
        return CustomUserCard(
          buttonName: 'View',
          onTap: () {},
        );
      },
    );
  }
}
