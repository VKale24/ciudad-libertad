import 'package:apk_cl/ui/profile/widgets/profile_bottom.dart';
import 'package:flutter/material.dart';

import 'package:apk_cl/ui/profile/widgets/profile_top.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    Key? key,
    required this.maxHeight,
  }) : super(key: key);

  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTop(maxHeight: maxHeight),
        ProfileBottom(maxHeight: maxHeight),
      ],
    );
  }
}
