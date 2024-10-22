import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
  const CustomIconText({
    super.key,
    required this.title,
    required this.image, this.onTap,
  });

  final String title;
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(90),
          child: Container(
            padding: const EdgeInsets.all(15),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
            ),
            child: Image.asset(image),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
