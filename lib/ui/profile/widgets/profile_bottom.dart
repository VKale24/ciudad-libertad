import 'package:flutter/material.dart';

class ProfileBottom extends StatefulWidget {
  const ProfileBottom({Key? key, required this.maxHeight}) : super(key: key);

  final double maxHeight;

  @override
  State<ProfileBottom> createState() => _ProfileBottomState();
}

class _ProfileBottomState extends State<ProfileBottom> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    void _onChanged(bool newValue) {
      setState(() {
        isSelected = !isSelected;
      });
    }

    return SizedBox(
      height: widget.maxHeight * .55,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General".toUpperCase(),
              style: TextStyle(
                color: Colors.white.withOpacity(.4),
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      notifications(_onChanged, constraints.maxHeight),
                      language(constraints.maxHeight),
                      settings(constraints.maxHeight),
                      contact_us(constraints.maxHeight),
                      close_sesion(constraints.maxHeight)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget notifications(
      void Function(bool newValue) _onChanged, double maxHeight) {
    return Container(
      height: maxHeight * .14,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                SizedBox(width: 6.0),
                Text(
                  "Notificaciones",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Switch(
              value: isSelected,
              onChanged: _onChanged,
              activeColor: Colors.amber,
            )
          ],
        ),
      ),
    );
  }

  Widget language(double maxHeight) {
    return Container(
      height: maxHeight * .14,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.language,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              "Lenguaje",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget settings(double maxHeight) {
    return Container(
      height: maxHeight * .14,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              "Opciones",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget contact_us(double maxHeight) {
    return Container(
      height: maxHeight * .14,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Icon(
              Icons.phone_android_sharp,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              "Dudas y sugerencias",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget close_sesion(double maxHeight) {
    return Container(
      height: maxHeight * .14,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.power_settings_new_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              "Cerrar sesión",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
