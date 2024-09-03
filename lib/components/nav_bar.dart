import 'package:flutter/material.dart';
import 'package:flutter_demo_website/components/contact_form.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  void _showContactForm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: ContactForm(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 60, 
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Image.asset(
              'assets/axcertro_logo_nobg.png',
              height: 80,
              width: 50 * 474 / 105, 
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: ElevatedButton(
              onPressed: () {
                _showContactForm(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 39, 207, 179), 
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(30), 
                ),
                side: const BorderSide(
                      color: Color.fromARGB(94, 98, 221, 164), 
                      width: 2, // Border width
                    ),

                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12), 
              ),
              
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 18, 
                    color: Colors.white, 
                    shadows: [
                      Shadow(
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Colors.black
                            .withOpacity(0.3), 
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
