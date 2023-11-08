// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class AppDropdown extends StatefulWidget {
  final List<String> dropdownOptions;
  final String selectedOption, text;
  final Function(String) onOptionChanged;

  AppDropdown({
    required this.dropdownOptions,
    required this.selectedOption,
    required this.onOptionChanged,
    required this.text,
  });

  @override
  _AppDropdownState createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            fontFamily: 'Times New Roman',
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
          ),
          child: DropdownButton<String>(
            underline: Container(),
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Times New Roman',
              color: Colors.black,
            ),
            isExpanded: true,
            elevation: 8,
            dropdownColor: Colors.grey.shade300,
            value: widget.selectedOption,
            onChanged: (String? newValue) {
              widget.onOptionChanged(newValue!);
            },
            items: widget.dropdownOptions.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
