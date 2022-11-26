import 'package:bmi_calculator/src/utils/dimensions.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.color = Colors.white})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: dimensions(20, context)),
          decoration: BoxDecoration(
            color: const Color(0xff1A1F38),
            borderRadius: BorderRadius.circular(dimensions(10, context)),
          ),
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(dimensions(10, context)),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xff1A1F38)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(dimensions(10, context)),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xff1A1F38)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(dimensions(10, context)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: dimensions(20, context),
        )
      ],
    );
  }
}
