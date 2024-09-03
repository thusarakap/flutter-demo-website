import 'package:flutter/material.dart';
import '../components/nav_bar.dart';
import '../components/hero_section.dart';
import '../components/about_us_section.dart';
import '../components/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            AboutUsSection(),
          ],
        ),
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
