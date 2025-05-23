import 'package:app/presentation/widget/custom_event_card.dart';
import 'package:app/resource/utils/common_lib.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: CustomText(
                txt: 'Transaction',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
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
                    text: 'Pending',
                    icon: Icon(
                      Icons.format_list_bulleted,
                      color: Colors.indigo,
                    ),
                  ),
                  Tab(
                    text: 'Completed',
                    icon: Icon(
                      Icons.assured_workload,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              _buildEventList(),
              _buildEventList(),
            ],
          ),
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
        return CustomTransactionCard();
      },
    );
  }
}
