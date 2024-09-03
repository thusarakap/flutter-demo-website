import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/about_us_provider.dart';

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final aboutUsProvider = Provider.of<AboutUsProvider>(context);

    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 20),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75, 
            child: Column(
              children: [
                const Text(
                  'Who We Are',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                Text(
                  'We are a company that values integrity and excellence. '
                  'Our mission is to provide top-notch services that exceed '
                  'our customers’ expectations.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 400,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/about_us_image.webp', 
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    aboutUsProvider.toggleExpansion();
                  },
                  child: Text(
                    aboutUsProvider.isExpanded ? 'Show Less' : 'Read More',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                if (aboutUsProvider.isExpanded)
                  Column(
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        'We have been serving our clients for over a decade, '
                        'constantly adapting to new challenges and innovations. '
                        'Our team is dedicated to delivering exceptional results.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
