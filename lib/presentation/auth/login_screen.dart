
import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/presentation/widget/helper_widget.dart';
import 'package:app/resource/utils/common_lib.dart';
import 'package:app/resource/utils/extensions.dart';



class ScreenLogin extends StatelessWidget {
  const ScreenLogin(
      {super.key, this.controller, this.obscureText, this.validator});
  final TextEditingController? controller;

  final String? Function(String?)? validator;

  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: inset.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(inset.offset),
            const CustomText(
              txt: 'Login',
              fontSize: 22,
            ),
            Gap(inset.xs),
            CustomText(
              txt:
                  'Welcome back to the app. Please log in with your email address',
              fontSize: 12,
              color: context.theme.kBlack.withOpacity(0.4),
            ),
            Gap(inset.md),
            const CustomTextFieldWidget(
              label: 'Email Address',
            ),
            Gap(inset.xs),
            CustomTextFieldWidget(
              label: 'Password',
              suffix: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility_off_outlined),
              ),
            ),
            Gap(inset.xs),
            CustomTextButton(
              txt: 'Forgot password?',
              onTap: () {
               // context.push(ScreenPath.forgotPwd);
              },
            ),
            Gap(inset.sm),
            CustomButton(
              text: 'Login',
              onTap: () {
                //context.go(ScreenPath.home);
              },
            ),
            Gap(inset.md),
            Center(
              child: CustomTextButton(
                txt: 'Create Account?',
                onTap: () {
                  //context.push(ScreenPath.signup);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
