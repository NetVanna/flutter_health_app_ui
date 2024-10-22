import 'package:flutter/material.dart';

import '../custom_widgets/custom_icon_text_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/doctor_1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Shahid Hussein",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "shapeliness@gmail.com",
                    style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  IconTextProfile(
                    iconData: Icons.person_outline,
                    title: 'Edit Profile',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  IconTextProfile(
                    iconData: Icons.favorite_rounded,
                    title: 'My Favorite',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  IconTextProfile(
                    iconData: Icons.payment,
                    title: 'Payments Method',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  IconTextProfile(
                    iconData: Icons.settings,
                    title: 'Settings',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  IconTextProfile(
                    iconData: Icons.security,
                    title: 'Security',
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  IconTextProfile(
                    iconData: Icons.logout,
                    title: 'My Favorite',
                    textColor: Colors.red,
                    bgColor: Colors.red,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
