import 'package:apk_cl/ui/common/color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MatchCard extends StatelessWidget {
  MatchCard({
    required this.team1,
    required this.team2,
    required this.hora,
    Key? key,
  }) : super(key: key);

  String team1;
  String team2;
  String hora;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 140,
                    child: Text(
                      team1,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    "VS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 140,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        team2,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white),
            Center(
                child: Text(
              hora,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: ColorApp.kPrimaryColor,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
