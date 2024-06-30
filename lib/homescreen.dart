import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/top-product-gridview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  HomeScreen({Key? key}) : super(key: key);
  final List<String> imgList = [
    'assets/sl-1.jpg',
    'assets/sl-2.jpg',
    'assets/sl-3.jpg',
    'assets/sl-4.jpg',
  ];
  final List<String> imgList2 = [
    'assets/apple.png',
    'assets/banana.png',
    'assets/capsicum.png',
    'assets/ginger.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            height: 70,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Shop Now",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 50, 50),
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Search Product Here"),
                    hintText: "Product Name",
                    suffixIcon: Material(
                      color: Colors.redAccent,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: imgList.length,
                    itemBuilder: (context, index, finalIndex) {
                      final urlImage = imgList[index];
                      return buildImage(urlImage, index);
                    },
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 10,
                      height: 180,
                      autoPlayInterval: Duration(seconds: 2),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top Products",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, TopProducts.path);
                          },
                          child: Text(
                            "View More >",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // GridView.builder(
                    //   itemBuilder: (context, index) {
                    //     return Container();
                    //   },
                    //   itemCount: 2,
                    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //       crossAxisCount: 2),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String imgList, int index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          // height: 1000,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgList),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.blue,
          ),
        ),
      );
}






/*
Container(
                            height: 170,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue[200],
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("assets/apple.png"),),
                            ),
                          ),
*/