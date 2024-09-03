import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey[800], 
      child: const Center(
        child: Text(
          '© 2024 Axcertro. All rights reserved.',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
