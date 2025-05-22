import 'package:app/resource/utils/common_lib.dart';

ValueNotifier<int> tabChangeNotifier = ValueNotifier<int>(0);

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key, required this.child});

  final Widget child;

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(vertical: inset.sm),
        height: 80,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black12)),
        ),
        child: ValueListenableBuilder(
          valueListenable: tabChangeNotifier,
          builder: (context, index, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavIconBtn(
                  index == 0,
                  Icons.home_rounded,
                  Icons.home_outlined,
                  () {
                    tabChangeNotifier.value = 0;
                    if (index != 0) {
                      //context.go(ScreenPath.home);
                    }
                  },
                ),
                _buildNavIconBtn(
                  index == 1,
                  Icons.search_outlined,
                  Icons.search,
                  () {
                    tabChangeNotifier.value = 1;
                    if (index != 1) {
                      //context.go(ScreenPath.search);
                    }
                  },
                ),
                _buildNavIconBtn(
                  index == 2,
                  Icons.calendar_month_outlined,
                  Icons.calendar_month,
                  () {
                    tabChangeNotifier.value = 2;
                    if (index != 2) {
                      //context.go(ScreenPath.booking);
                    }
                  },
                ),
                _buildNavIconBtn(
                  index == 3,
                  Icons.person_outline,
                  Icons.person,
                  () {
                    tabChangeNotifier.value = 3;
                    if (index != 3) {
                      //context.go(ScreenPath.profile);
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
      body: widget.child,
    );
  }

  GestureDetector _buildNavIconBtn(
    bool isSelected,
    IconData unSelected,
    IconData selected,
    Function() onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        isSelected ? selected : unSelected,
        size: 30,
        color: isSelected ? Colors.black : Colors.black12,
      ),
    );
  }
}
