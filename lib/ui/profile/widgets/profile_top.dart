import 'package:flutter/material.dart';

import 'package:apk_cl/ui/profile/widgets/profile_stats_player.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({
    Key? key,
    required this.maxHeight,
  }) : super(key: key);

  final double maxHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: maxHeight * .45,
      width: double.infinity,
      color: Colors.grey.withOpacity(.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Alejandro Díaz",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Jugador",
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          const ProfileStatsPlayer(),
          const Spacer(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Divider(color: Colors.white),
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                    medalProfile(),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Más detalles >>",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget medalProfile() {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 50,
        width: 50,
        decoration:
            const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      ),
    );
  }
}
