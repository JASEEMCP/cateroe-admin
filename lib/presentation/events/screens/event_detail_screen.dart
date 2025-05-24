import 'package:app/presentation/widget/custom_button.dart';
import 'package:app/presentation/widget/custom_dropdown_search.dart';
import 'package:app/presentation/widget/custom_text_field_widget.dart';
import 'package:app/resource/utils/common_lib.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inset = $style.insets;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          txt: 'Create Event',
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
                label: 'Event Name',
              ),
              CustomTextFieldWidget(
                label: 'Location Name',
              ),
              CustomTextFieldWidget(
                label: 'Location (Link)',
                hint: 'URL',
              ),
              CustomTextFieldWidget(
                label: 'Date of Event',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: inset.xs,
                children: [
                  Expanded(
                    child: CustomTextFieldWidget(
                      label: 'Start Time',

                      suffix: Icon(Icons.timer),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFieldWidget(
                      label: 'End Time',
                      suffix: Icon(Icons.timer),
                    ),
                  ),
                ],
              ),
              CustomTextFieldWidget(
                label: 'PAX Count',
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
