import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_circle_btn.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/presentation/widget/helper_widget.dart';
import 'package:app/resource/utils/common_lib.dart';
import 'package:app/resource/utils/extensions.dart';
import 'package:flutter/services.dart';


class ScreenForgotPwd extends StatefulWidget {
  const ScreenForgotPwd({super.key});

  @override
  State<ScreenForgotPwd> createState() => _ScreenForgotPwdState();
}

class _ScreenForgotPwdState extends State<ScreenForgotPwd> {
  bool otpSended = false;
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
              txt: 'Forgot Password',
              fontSize: 22,
            ),
            Gap(inset.xs),
            CustomText(
              txt: 'Enter your registered email address ',
              fontSize: 12,
              color: context.theme.kBlack.withOpacity(0.4),
            ),
            Gap(inset.lg),
            const CustomTextFieldWidget(
              label: 'Email Address',
            ),
            Gap(inset.xs),
            if (otpSended)
              CustomTextFieldWidget(
                label: 'OTP',
                type: TextInputType.number,
                inputFormatters: [LengthLimitingTextInputFormatter(5)],
              ),
            Gap(inset.sm),
            if (otpSended)
              Center(
                child: CustomTextButton(
                  txt: 'Resend OTP?',
                  onTap: () {},
                ),
              ),
            Gap(inset.sm),
            CustomButton(
              text: otpSended ? "Verify OTP" : 'Submit',
              onTap: () async {
                if (otpSended) {
                  //context.push(ScreenPath.resetPwd());
                  return;
                }
                await Future.delayed(const Duration(seconds: 1));
                otpSended = true;
                setState(() {});
              },
            ),
            Gap(inset.md),
            Center(
              child: CustomTextButton(
                txt: 'Back',
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
