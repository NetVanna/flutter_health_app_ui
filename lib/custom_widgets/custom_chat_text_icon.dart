import 'package:flutter/material.dart';

class ChatIconText extends StatelessWidget {
  const ChatIconText({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.showTime,
  });

  final String image, title, subTitle, showTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                showTime,
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
