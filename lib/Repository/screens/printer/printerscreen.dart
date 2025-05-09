// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:blinkit_app/Domain/constants/appcolors.dart';
import 'package:blinkit_app/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrinterScreen extends StatelessWidget {
  PrinterScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F0CE),
      body: Column(
        children: [
          SizedBox(height: 50),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: AppColors.scaffoldbackground,
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "Blinkit in",
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "16 minutes",
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "HOME",
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                        Uihelper.customText(
                          text: "-",
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 12,
                          fontfamily: "bold",
                        ),
                        Uihelper.customText(
                          text: "Mr_Haider,Qasabaan,DIKhan (Ali)",
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 12,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 120,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 15,
                child: Uihelper.customTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 30),
          Uihelper.customText(
            text: "Print Store",
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontsize: 32,
          ),

          Uihelper.customText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0xFF9C9C9C),
            fontweight: FontWeight.normal,
            fontsize: 14,
            fontfamily: "regular",
          ),
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 163,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Uihelper.customText(
                          text: "Documents",
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Uihelper.customImage(img: "dot.png"),
                        SizedBox(width: 10),
                        Uihelper.customText(
                          text: "Price starting at rs 3/page",
                          color: Color(0xFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(width: 10),
                        Uihelper.customImage(img: "dot.png"),
                        SizedBox(width: 10),
                        Uihelper.customText(
                          text: "Paper quality: 70 GSM",
                          color: Color(0xFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(width: 10),
                        Uihelper.customImage(img: "dot.png"),
                        SizedBox(width: 10),
                        Uihelper.customText(
                          text: "Single side prints",
                          color: Color(0xFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 40,
                child: Uihelper.customImage(img: "pages.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
