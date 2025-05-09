import 'package:blinkit_app/Domain/constants/appcolors.dart';
import 'package:blinkit_app/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(height: 20),
          Uihelper.customImage(img: "cart.png"),
          SizedBox(height: 20),
          Uihelper.customText(
            text: "Reordering will be easy",
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold",
          ),
          SizedBox(height: 5),
          Uihelper.customText(
            text: "Items you order will show up here so you can buy",
            color: Color(0xFF000000),
            fontweight: FontWeight.normal,
            fontsize: 12,
          ),
          SizedBox(height: 5),
          Uihelper.customText(
            text: "them again easily.",
            color: Color(0xFF000000),
            fontweight: FontWeight.normal,
            fontsize: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Bestsellers",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Stack(
                children: [
                  Uihelper.customImage(img: "milk_cart.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: Uihelper.customButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Stack(
                children: [
                  SizedBox(width: 5),
                  Uihelper.customImage(img: "potatoe_cart.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: Uihelper.customButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 5),
              Stack(
                children: [
                  SizedBox(width: 5),
                  Uihelper.customImage(img: "tomatoe_cart.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: Uihelper.customButton(() {}),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Amul Taaza Toned \nFresh Milk",
                color: Color(0xFF000000),
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
              SizedBox(width: 10),
              Uihelper.customText(
                text: "Potato (Aloo)",
                color: Color(0xFF000000),
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
              SizedBox(width: 35),
              Uihelper.customText(
                text: "Hybrid Tomato",
                color: Color(0xFF000000),
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Rs. 50",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 15,
                fontfamily: "bold",
              ),
              SizedBox(width: 60),
              Uihelper.customText(
                text: "Rs. 110",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 15,
                fontfamily: "bold",
              ),
              SizedBox(width: 60),
              Uihelper.customText(
                text: "Rs. 150",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 15,
                fontfamily: "bold",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
