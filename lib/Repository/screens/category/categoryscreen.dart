// ignore_for_file: must_be_immutable

import 'package:blinkit_app/Domain/constants/appcolors.dart';
import 'package:blinkit_app/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  TextEditingController searchController = TextEditingController();
  var groceryKitchen = [
    {"img": "fruits.png", "name": "Vegetables & \nFruits"},
    {"img": "grains.png", "name": "Atta, Dal & \nRice"},
    {"img": "grocery.png", "name": "Oil, Ghee & \nMasala"},
    {"img": "juices.png", "name": "Dairy, Bread & \nMilk"},
    {"img": "choc.png", "name": "Biscuits & \nBakery"},
  ];

  var secondGrocery = [
    {"img": "dry-fruits.png", "name": "Dry Fruits & \nCereals"},
    {"img": "kitchen.png", "name": "Kitchen & \nAppliances"},
    {"img": "coffees.png", "name": "Tea & \nCoffees"},
    {"img": "ice-creams.png", "name": "Ice Creams & \nmuch more"},
    {"img": "noodles.png", "name": "Noodles & \nPacket Food"},
  ];
  var snacksItems = [
    {"img": "chips.png", "name": "Chips & \nNamkeens"},
    {"img": "sweets.png", "name": "Sweets & \nChocalates"},
    {"img": "drinks.png", "name": "Drinks & \nJuices"},
    {"img": "sauces.png", "name": "Sauces & \nSpreads"},
    {"img": "cosmetics.png", "name": "Beauty & \nCosmetics"},
  ];
  var houseItems = [
    {"img": "surf.png"},
    {"img": "soap.png"},
    {"img": "vaseline.png"},
    {"img": "sofa.png"},
    {"img": "sanitizer.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
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
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: groceryKitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Uihelper.customText(
                        text: groceryKitchen[index]["name"].toString(),
                        color: Color(0xFF000000),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: groceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: secondGrocery[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Uihelper.customText(
                        text: groceryKitchen[index]["name"].toString(),
                        color: Color(0xFF000000),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: secondGrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Snacks & Drinks",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD9EBEB),
                          ),
                          child: Uihelper.customImage(
                            img: snacksItems[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Uihelper.customText(
                        text: snacksItems[index]["name"].toString(),
                        color: Color(0xFF000000),
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: snacksItems.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Uihelper.customText(
                text: "Household Essentials",
                color: Color(0xFF000000),
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFD9EBEB),
                      ),
                      child: Uihelper.customImage(
                        img: houseItems[index]["img"].toString(),
                      ),
                    ),
                  );
                },
                itemCount: houseItems.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
