import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.image, required this.title});
final String image,title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              image,
              width: 50,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
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
              const SizedBox(height: 5),
              const Text(
                "Dental Specialist",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Ionicons.calendar_outline,
                      size: 18,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.0, right: 14),
                      child: Text(
                        "Today",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Icon(
                      Ionicons.time_outline,
                      size: 18,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        "14:30 - 15:30 PM",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(
                    height: 32,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Cancel"),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 32,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      child: const Text("ReSchedule"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
