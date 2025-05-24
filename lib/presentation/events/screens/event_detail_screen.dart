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
                suffix: Icon(Icons.place),
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
              CustomTextFieldWidget(
                label: 'Organization Name',
              ),
              CustomTextFieldWidget(
                label: 'Boys Count',
              ),
              CustomDropDownSearch(
                label: 'Dining Set',
                hintText: '-Select-',
                menu: [
                  MenuItem('id', 'Sitting'),
                  MenuItem('id', 'Buffet'),
                  MenuItem('id', 'Both'),
                ],
                onSelect: (p0) {},
              ),
              CustomTextFieldWidget(
                label: 'Caption',
                hint: 'Search Caption',
                suffix: Icon(Icons.badge),
              ),
              CustomTextFieldWidget(
                label: 'Caption',
                hint: 'Price',
                suffix: Icon(Icons.price_change),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: inset.xs,
                children: [
                  Expanded(
                    child: CustomTextFieldWidget(
                      label: 'Junior Boy',
                      hint: 'Price',
                      suffix: Icon(Icons.price_change),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFieldWidget(
                      label: 'Normal Boy',
                      hint: 'Price',
                      suffix: Icon(Icons.price_change),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: inset.xs,
                children: [
                  Expanded(
                    child: CustomTextFieldWidget(
                      label: 'Senior Boy',
                      hint: 'Price',
                      suffix: Icon(Icons.price_change),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFieldWidget(
                      label: 'Supervisor',
                      hint: 'Price',
                      suffix: Icon(Icons.price_change),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: inset.xs,
                children: [
                  CustomText(
                    txt: 'Upload Position',
                    fontSize: 14,

                    color: context.theme.kSecondary,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: context.theme.kBlack.withValues(alpha: 0.1),
                      ),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.upload),
                      ),
                    ),
                  ),
                ],
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
