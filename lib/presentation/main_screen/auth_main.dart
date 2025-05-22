import 'package:app/resource/utils/common_lib.dart';

class AuthMain extends StatelessWidget {
  const AuthMain({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
