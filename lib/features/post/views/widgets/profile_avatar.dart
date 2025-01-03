import 'package:flutter/material.dart';
import 'package:ntitask/core/style/size_app.dart';
import 'package:ntitask/core/style/string_app.dart';
import 'package:ntitask/features/post/views/widgets/text_style.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 12,
        children: [
          CircleAvatar(
            radius: 26,
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-psd/3d-rendering-hair-style-avatar-design_23-2151869123.jpg?t=st=1735936371~exp=1735939971~hmac=91581f8e5e941c953b9cb93ccb13e67d380108b592aa9e1e2221d115039155d5&w=740',
              ),
            ),
          ),
          Text(
            StringApp.name,
            style: textStyle(
              size: SizeApp.s16,
              spacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsApp {}
