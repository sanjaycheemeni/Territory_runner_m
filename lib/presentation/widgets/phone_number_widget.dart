import 'package:flutter/material.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({
    super.key,
    required this.controller,
    required this.errorText,
  });

  final String errorText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Container(
          width: double.maxFinite,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.1),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: .all(10),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '+91',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isCollapsed: true,
                  ),
                ),
              ),
            ],
          ),
        ),

        Visibility(
          visible: errorText != '',
          child: Text(errorText, style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
