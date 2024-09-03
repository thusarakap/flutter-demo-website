import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600; 
    final heroSectionHeight = MediaQuery.of(context).size.height * 0.4;

    return Container(
      padding: EdgeInsets.only(
        left: isMobile ? 10 : 30,
        right: isMobile ? 10 : 30,
        bottom: isMobile ? 15 : 30,
        top: isMobile ? 10 : 20,
      ),
      height: heroSectionHeight,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(top: 10, bottom:15, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Axcertro',
                  style: TextStyle(
                    fontSize: isMobile ? 28 : 42, 
                    fontWeight: FontWeight.w900,
                    shadows: [
                      Shadow(
                        offset: const Offset(0.5, 2.0),
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'We are committed to providing the best services.\nJoin us and experience the difference.',
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 22, 
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 20 : 30,
                      vertical: isMobile ? 12 : 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                    textStyle: TextStyle(
                      fontSize: isMobile ? 18 : 22, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/hero_image.jpg',
                fit: BoxFit.cover,
                height: heroSectionHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
