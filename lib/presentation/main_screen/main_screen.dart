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
        height: 90,
        decoration: BoxDecoration(
          color: context.theme.kSecondary,
          border: Border(
            top: BorderSide(
              color: context.theme.kBlack.withValues(alpha: 0.1),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: inset.sm),
              child: ValueListenableBuilder(
                valueListenable: tabChangeNotifier,
                builder: (context, index, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavIconBtn(
                        index == 0,
                        Icons.home_outlined,
                        Icons.home_rounded,
                        () {
                          tabChangeNotifier.value = 0;
                          if (index != 0) {
                            context.go(ScreenPath.home);
                          }
                        },
                      ),
                      _buildNavIconBtn(
                        index == 1,
                        Icons.event_outlined,
                        Icons.event,
                        () {
                          tabChangeNotifier.value = 1;
                          if (index != 1) {
                            context.go(ScreenPath.events);
                          }
                        },
                      ),
                      _buildNavIconBtn(
                        index == 2,
                        Icons.sync_alt_outlined,
                        Icons.sync_alt,
                        () {
                          tabChangeNotifier.value = 2;
                          if (index != 2) {
                            context.go(ScreenPath.transaction);
                          }
                        },
                      ),
                      _buildNavIconBtn(
                        index == 3,
                        Icons.add_home_outlined,
                        Icons.add_home,
                        () {
                          tabChangeNotifier.value = 3;
                          if (index != 3) {
                            context.go(ScreenPath.addUser);
                          }
                        },
                      ),
                      _buildNavIconBtn(
                        index == 4,
                        Icons.checklist_outlined,
                        Icons.checklist,
                        () {
                          tabChangeNotifier.value = 4;
                          if (index != 4) {
                            //context.go(ScreenPath.profile);
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
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
        color: isSelected
            ? context.theme.kPrimaryGold
            : context.theme.kWhite.withValues(alpha: 0.3),
      ),
    );
  }
}
