import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appointment_card.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int currentIndex = 0;

  Widget _buildSegmentContent() {
    switch (currentIndex) {
      case 0:
        return const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Upcoming Appointments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AppointmentCard(
              image: 'assets/doctor_1.jpg',
              title: 'Dr. Sham Diny',
            ),
            SizedBox(height: 20),
            AppointmentCard(
              image: 'assets/doctor_2.jpg',
              title: 'Dr. Naruto Dy',
            ),
            SizedBox(height: 20),
            AppointmentCard(
              image: 'assets/doctor_3.jpg',
              title: 'Dr. Sun Summon',
            ),
          ],
        );
      case 1:
        return const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                "Complete Appointments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            AppointmentCard(
              image:
                  'assets/people-headshot-lauren-lieberman-830b33fdd4cc4c4bbc6e71ebd84dd633.jpg',
              title: 'Loki Santa',
            ),
            SizedBox(height: 20),
            AppointmentCard(
              image:
                  'assets/people-headshot-lindsay-kimble-9855440283c440159d1684a4befaa97d.jpg',
              title: 'Chain Dara',
            ),
            SizedBox(height: 20),
            AppointmentCard(
              image: 'assets/p-5.jpeg',
              title: 'Dany ASane',
            ),
          ],
        );
      default:
        return const Center(
          child: Text(
            "No data available",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Appointment",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          CupertinoSlidingSegmentedControl(
            groupValue: currentIndex,
            children: const {
              0: Text("Upcoming"),
              1: Text("Complete"),
              2: Text("Result")
            },
            onValueChanged: (value) {
              setState(() {
                currentIndex = value!;
              });
            },
          ),
          const SizedBox(height: 20),
          _buildSegmentContent(),
        ],
      ),
    );
  }
}
