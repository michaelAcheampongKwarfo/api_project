import 'package:flutter/material.dart';
import 'package:web_api_project/widgets/app_colors.dart';
import 'package:web_api_project/widgets/app_dropdown.dart';
import 'package:web_api_project/widgets/app_text.dart';

class ApiForm extends StatefulWidget {
  const ApiForm(
      {super.key, required this.width, required this.height, this.widget});

  final double width;
  final double height;
  final Widget? widget;

  @override
  State<ApiForm> createState() => _ApiFormState();
}

class _ApiFormState extends State<ApiForm> {
  @override
  Widget build(BuildContext context) {
    String selectedThirdParty = 'MTN';
    String selectedApiType = '';
    String thirdPartyApiEndpoint = '';
    String requestMethod = '';
    String apiAuthType = '';
    String resquestBody = '';
    return Container(
      width: widget.width * 0.32,
      height: widget.height * 0.6,
      padding: const EdgeInsets.all(
        0.8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.backgroundColor,
          width: 0.5,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              text: 'Complete the form below',
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            Divider(),
            AppDropdown(
              dropdownOptions: const [
                'Ghana Water Company',
                'ECG',
                'MTN',
                'Vodafone',
                'AirtelTigo',
              ],
              selectedOption: selectedThirdParty,
              onOptionChanged: (newValue) {
                setState(() {
                  selectedThirdParty = newValue;
                  print(selectedThirdParty);
                });
              },
              text: 'Third Party',
            ),
            AppDropdown(
              dropdownOptions: const [
                'Ghana Water Company',
                'ECG',
                'MTN',
                'Vodafone',
                'AirtelTigo',
              ],
              selectedOption: selectedThirdParty,
              onOptionChanged: (newValue) {
                setState(() {
                  selectedThirdParty = newValue;
                  print(selectedThirdParty);
                });
              },
              text: 'Third Party',
            ),
            AppDropdown(
              dropdownOptions: const [
                'Ghana Water Company',
                'ECG',
                'MTN',
                'Vodafone',
                'AirtelTigo',
              ],
              selectedOption: selectedThirdParty,
              onOptionChanged: (newValue) {
                setState(() {
                  selectedThirdParty = newValue;
                  print(selectedThirdParty);
                });
              },
              text: 'Third Party',
            ),
            AppDropdown(
              dropdownOptions: const [
                'Ghana Water Company',
                'ECG',
                'MTN',
                'Vodafone',
                'AirtelTigo',
              ],
              selectedOption: selectedThirdParty,
              onOptionChanged: (newValue) {
                setState(() {
                  selectedThirdParty = newValue;
                  print(selectedThirdParty);
                });
              },
              text: 'Third Party',
            ),
            AppDropdown(
              dropdownOptions: const [
                'Ghana Water Company',
                'ECG',
                'MTN',
                'Vodafone',
                'AirtelTigo',
              ],
              selectedOption: selectedThirdParty,
              onOptionChanged: (newValue) {
                setState(() {
                  selectedThirdParty = newValue;
                  print(selectedThirdParty);
                });
              },
              text: 'Third Party',
            ),
          ],
        ),
      ),
    );
  }
}
