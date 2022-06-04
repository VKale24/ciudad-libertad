import 'package:flutter/material.dart';

import 'package:apk_cl/ui/profile/widgets/profile_details.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      return Column(
        children: [
          ProfileDetails(maxHeight: maxHeight),
        ],
      );
    }));
  }
}
