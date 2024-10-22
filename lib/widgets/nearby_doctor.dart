import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/doctor_models.dart';

class NearbyDoctor extends StatelessWidget {
  const NearbyDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      nearbyDoctor.length,
      (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(nearbyDoctor[index].profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nearbyDoctor[index].name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Text(nearbyDoctor[index].position),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        size: 18,
                        color: Colors.yellow[700],
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${nearbyDoctor[index].averageReview}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "${nearbyDoctor[index].totalReview} Reviews",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ));
  }
}
