

import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_circle_btn.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/presentation/widget/helper_widget.dart';
import 'package:app/resource/utils/common_lib.dart';
import 'package:app/resource/utils/extensions.dart';

class ScreenResetPwd extends StatelessWidget {
  const ScreenResetPwd({super.key});

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: CustomCircleBtn(
          onTap: () {
            //context.go(ScreenPath.login);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: inset.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(inset.md),
            const CustomText(
              txt: 'Reset Password',
              fontSize: 22,
            ),
            Gap(inset.xs),
            CustomText(
              txt: 'Enter your new password here',
              fontSize: 12,
              color: context.theme.kBlack.withOpacity(0.4),
            ),
            Gap(inset.lg),
            const CustomTextFieldWidget(
              label: 'Password',
            ),
            Gap(inset.xs),
            CustomTextFieldWidget(
              label: 'Confirm Password',
              suffix: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.visibility_off_outlined),
              ),
            ),
            Gap(inset.sm),
            CustomButton(
              text: 'Submit',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
