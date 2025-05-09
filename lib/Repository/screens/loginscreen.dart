import 'package:blinkit_app/Repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit_app/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Uihelper.customImage(img: "onboarding.png"),
            SizedBox(height: 10),
            Uihelper.customImage(img: "blinkit.png"),
            SizedBox(height: 10),
            Uihelper.customText(
              text: "India’s last minute app",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Uihelper.customText(
                      text: "Najaf",
                      color: Color(0xFF000000),
                      fontweight: FontWeight.w500,
                      fontsize: 14,
                    ),
                    SizedBox(height: 5),
                    Uihelper.customText(
                      text: "78277XXXX",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.customText(
                              text: "Login  with",
                              color: Color(0xFFFFFFFF),
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: "bold",
                            ),
                            SizedBox(width: 5),
                            Uihelper.customImage(img: "zomatoe_logo.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Uihelper.customText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),
                    SizedBox(height: 15),
                    Uihelper.customText(
                      text: "or login with phone number",
                      color: Color(0xFF269237),
                      fontweight: FontWeight.normal,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
