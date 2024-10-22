import 'package:flutter/material.dart';

class IconTextProfile extends StatelessWidget {
  const IconTextProfile({
    super.key,
    required this.iconData,
    required this.title,
    this.onTap,
    this.textColor = Colors.black,
    this.bgColor = Colors.blue,
  });

  final IconData iconData;
  final String title;
  final void Function()? onTap;
  final Color? textColor, bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
