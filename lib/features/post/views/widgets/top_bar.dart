import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/core/style/string_app.dart';
import 'package:ntitask/features/post/views/widgets/alterdialod.dart';
import 'package:ntitask/features/post/views/widgets/text_style.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, right: 16),
      child: Row(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: FaIcon(
                  FontAwesomeIcons.xmark,
                  color: ColorApp.colorWhite,
                ),
              ),
              Text(StringApp.postCreate,
                  style: textStyle(size: SizeApp.s20, spacing: -0.2)),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          MaterialButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alertDialog();
                },
              );
            },
            color: ColorApp.colorWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              StringApp.post,
              style: TextStyle(
                fontSize: SizeApp.s14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
