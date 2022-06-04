import 'package:flutter/material.dart';

import 'package:apk_cl/ui/common/color.dart';

class TournamentCard extends StatelessWidget {
  const TournamentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text("Liga",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Divider(
              color: Colors.white.withOpacity(.2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    const SizedBox(width: 10.0),
                    const Text(
                      "La Caliente",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  "27 equipos",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: ColorApp.colorBlackFont,
          borderRadius: BorderRadius.circular(3),
          boxShadow: const [
            BoxShadow(color: Colors.black26, blurRadius: 6, spreadRadius: 2)
          ]),
    );
  }
}
