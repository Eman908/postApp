import 'package:flutter/material.dart';
import 'package:ntitask/features/post/views/widgets/bottom_actions.dart';
import 'package:ntitask/features/post/views/widgets/profile_avatar.dart';
import 'package:ntitask/features/post/views/widgets/textfield.dart';
import 'package:ntitask/features/post/views/widgets/top_bar.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TopBar(),
          SizedBox(
            height: 24,
          ),
          ProfileAvatar(),
          SizedBox(
            height: 24,
          ),
          TextfieldPost(),
          Spacer(
            flex: 1,
          ),
          BottomActions(),
        ],
      ),
    );
  }
}
