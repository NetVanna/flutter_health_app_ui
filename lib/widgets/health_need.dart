import 'package:flutter/material.dart';

import '../custom_widgets/custom_bottom_sheet.dart';
import '../custom_widgets/custom_icon_text.dart';

class HealthNeed extends StatelessWidget {
  const HealthNeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomIconText(
          title: 'Appointment',
          image: 'assets/appointment.png',
        ),
        const CustomIconText(
          title: 'Hospital',
          image: 'assets/hospital.png',
        ),
        const CustomIconText(
          title: 'Covid-19',
          image: 'assets/virus.png',
        ),
        CustomIconText(
          onTap: () {
            showModalBottomSheet(
              showDragHandle: true,
              context: context,
              builder: (context) {
                return const CustomBottomSheet();
              },
            );
          },
          title: 'More',
          image: 'assets/more.png',
        ),
      ],
    );
  }
}
