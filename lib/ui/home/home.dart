import 'package:flutter/material.dart';

import 'package:apk_cl/ui/home/widgets/notice_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          NoticeWidget(),
          NoticeWidget(),
          NoticeWidget(),
          NoticeWidget(),
          NoticeWidget(),
        ],
      ),
    );
  }
}
