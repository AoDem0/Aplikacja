import 'package:dsw52708/utils/my_colors.dart';
import 'package:flutter/material.dart';

class BasicTextFormField extends StatelessWidget {
  final String hintText;
  final String? prefixIconPath;

  const BasicTextFormField({required this.hintText, super.key, this.prefixIconPath,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 390,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIconPath != null
                  ? Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(prefixIconPath!),
              )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),

              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: MyColors.lightPurpleColor,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                  color: MyColors.lightPurpleColor,
                  width: 2,
                ),
            ),
          ),
        ),
        ),
      ],
    );
  }
}
