import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              "assets/doctor_2.jpg",
              width: 50,
            ),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Dr. Donate Naruto",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Dental Specialist",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Ionicons.calendar_outline,
                      size: 18,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.0, right: 14),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Ionicons.time_outline,
                      size: 18,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "14:30 - 15:30 PM",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
