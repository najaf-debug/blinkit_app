// ignore_for_file: must_be_immutable

import 'package:blinkit_app/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var data = [
    {"img": "dia.png", "txt": "Lights, Diyas \n& Candles"},
    {"img": "chocolates.png", "txt": "Eid \nGifts"},
    {"img": "appliances.png", "txt": "Appliances \n& Gadgets"},
    {"img": "furniture.png", "txt": "Home \n& Living"},
  ];
  var category = [
    {"img": "candle.png", "txt": "Golden Glass \nWooden Lid Candle (Oudh)"},
    {"img": "mithai.png", "txt": "Royal Gulab Jamun \nBy Bikano"},
    {"img": "bhujia.png", "txt": "Spicy Masalay \ndaar Daal"},
  ];
  var groceryKitchen = [
    {"img": "fruits.png", "name": "Vegetables & \nFruits"},
    {"img": "grains.png", "name": "Atta, Dal & \nRice"},
    {"img": "grocery.png", "name": "Oil, Ghee & \nMasala"},
    {"img": "juices.png", "name": "Dairy, Bread & \nMilk"},
    {"img": "choc.png", "name": "Biscuits & \nBakery"},
  ];

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
                color: Color(0xFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.customText(
                          text: "Blinkit in",
                          color: Color(0xFFFFFFFF),
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
                          color: Color(0xFFFFFFFF),
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
                          color: Color(0xFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                        Uihelper.customText(
                          text: "-",
                          color: Color(0xFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 12,
                          fontfamily: "bold",
                        ),
                        Uihelper.customText(
                          text: "Mr_Haider,Qasabaan,DIKhan (Ali)",
                          color: Color(0xFFFFFFFF),
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
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Color(0xFFFFFFFF), size: 20),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 15,
                child: Uihelper.customTextField(controller: searchController),
              ),
            ],
          ),
          Container(height: 1, width: double.infinity, color: Colors.white),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0xFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.customImage(img: "cracker1.png"),
                    Uihelper.customImage(img: "cracker2.png"),
                    Uihelper.customText(
                      text: "Mega Eid Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "bold",
                    ),
                    Uihelper.customImage(img: "cracker3.png"),
                    Uihelper.customImage(img: "cracker4.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            height: 108,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Color(0xFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Uihelper.customText(
                                  text: data[index]["txt"].toString(),
                                  color: Color(0xFF000000),
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                  fontfamily: "bold",
                                ),
                                Uihelper.customImage(
                                  img: data[index]["img"].toString(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Uihelper.customImage(
                            img: category[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Uihelper.customText(
                          text: category[index]["txt"].toString(),
                          color: Color(0xFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 8,
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Uihelper.customText(
                              text: "Rs. 100",
                              color: Color(0xFF000000),
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 70,
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
        ],
      ),
    );
  }
}
