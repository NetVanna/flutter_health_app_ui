import 'package:flutter/material.dart';
import 'package:health_app/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/health_need.dart';
import '../widgets/nearby_doctor.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Jane"),
            Text(
              "How are you feeling today?",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.notifications_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          // upcoming card
          const UpcomingCard(),
          const SizedBox(height: 20),
          // health need
          Text("Health Need", style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 15),
          const HealthNeed(),
          // Nearby doctor
          const SizedBox(height: 40),
          Text("Nearby Doctor", style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 15),
          const NearbyDoctor(),
        ],
      ),

    );
  }
}
