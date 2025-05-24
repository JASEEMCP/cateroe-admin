import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_dropdown_search.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/resource/utils/common_lib.dart';

class AddNewUserScreen extends StatelessWidget {
  const AddNewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          txt: 'Add User',
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(inset.sm),
        child: Container(
          padding: EdgeInsets.all(inset.xs),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 221, 212, 212),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 1),
              ),
            ],
            color: context.theme.kWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            spacing: inset.sm,
            children: [
              CustomTextFieldWidget(
                label: 'Phone Number',
                hint: '+91',
              ),
              CustomTextFieldWidget(
                label: 'Email Address',
              ),
              CustomTextFieldWidget(
                label: 'Name',
              ),
              CustomTextFieldWidget(
                label: 'Password',
              ),
              CustomDropDownSearch(
                label: 'Level',
                hintText: '-Select-',
                menu: [
                  MenuItem('id', 'Junior'),
                  MenuItem('id', 'Normal'),
                  MenuItem('id', 'Senior'),
                ],
                onSelect: (p0) {},
              ),
              CustomDropDownSearch(
                label: 'Position',
                hintText: '-Select-',
                menu: [
                  MenuItem('id', 'Boy'),
                  MenuItem('id', 'Supervisor'),
                  MenuItem('id', 'Caption'),
                ],
                onSelect: (p0) {},
              ),
              CustomTextFieldWidget(
                label: 'Work Count',
              ),
              CustomButton(
                text: 'Create',
                bgColor: Colors.green,
                onTap: () {
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
