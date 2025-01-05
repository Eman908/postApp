import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ntitask/core/style/color_app.dart';
import 'package:ntitask/core/style/size_app.dart';

class BottomActions extends StatelessWidget {
  const BottomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: ColorApp.colorDivider.withAlpha(10),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "#Addtag...",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: SizeApp.s16, color: ColorApp.colorHintText),
            ),
          ),
          Divider(
            color: ColorApp.colorDivider.withAlpha(10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Row(
                  spacing: 16,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.solidFaceSmile,
                      color: Color(0xffFFC22E),
                    ),
                    const FaIcon(
                      FontAwesomeIcons.solidImage,
                      color: Color(0xff5F95FF),
                    ),
                    const FaIcon(
                      FontAwesomeIcons.video,
                      color: Color(0xff20AF0B),
                    ),
                    Text(
                      '@',
                      style: TextStyle(
                          color: ColorApp.colorHintText, fontSize: SizeApp.s24),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                MaterialButton(
                  elevation: 0,
                  color: ColorApp.colorButton.withAlpha(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27)),
                  onPressed: () {},
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.globe,
                        color: ColorApp.colorHintText,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Public',
                        style: TextStyle(
                          color: ColorApp.colorHintText,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleDown,
                        color: ColorApp.colorHintText,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
