import 'package:app/presentation/widget/custom_user_card.dart';
import 'package:app/resource/utils/common_lib.dart';

class UserPaymentListScreen extends StatelessWidget {
  const UserPaymentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (ctx, innerBoxIsScrolled) => [
            SliverAppBar(
              title: CustomText(
                txt: 'Pending Payments',
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
        return CustomUserPaymentCard(
          onTap: () {
            customAlertBox(ctx);
          },
        );
      },
    );
  }
}
