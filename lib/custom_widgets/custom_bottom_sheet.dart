import 'package:flutter/material.dart';

import 'custom_icon_text.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Health Need",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconText(
                title: 'Appointment',
                image: 'assets/appointment.png',
              ),
              CustomIconText(
                title: 'Hospital',
                image: 'assets/hospital.png',
              ),
              CustomIconText(
                title: 'Covid-19',
                image: 'assets/virus.png',
              ),
              CustomIconText(
                title: 'Pharmacy',
                image: 'assets/drug.png',
              ),
            ],
          ),
          const SizedBox(height: 25),
          Text(
            "Specialised Care",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconText(
                title: 'Diabetes',
                image: 'assets/blood.png',
              ),
              CustomIconText(
                title: 'Health Care',
                image: 'assets/health_care.png',
              ),
              CustomIconText(
                title: 'Dental',
                image: 'assets/tooth.png',
              ),
              CustomIconText(
                title: 'Insured',
                image: 'assets/insurance.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}