import 'package:flutter/material.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/core/style/string_app.dart';

class TextfieldPost extends StatelessWidget {
  const TextfieldPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: StringApp.formHintTitle,
              hintStyle: TextStyle(
                fontSize: SizeApp.s24,
                color: ColorApp.colorHintText,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: StringApp.formHintBody,
              hintStyle: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: SizeApp.s16,
                  color: ColorApp.colorHintText,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
