import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final List<String> imgList = [
      "assets/promo1.jpg",
      "assets/promo1.jpg",
      "assets/promo1.jpg",
      "assets/promo1.jpg",
    ];

    final List<Widget> imageSliders = imgList
        .map((item) => Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              elevation: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
              )
            ),
          ))
        .toList();

    List paymentText = ["Send", "Pay", "Top Up", "Request"];

    List financeBodyText = [
      "Bill Payment",
      "E-Shopping",
      "Charity",
      "Split Bills",
      "Send Gift",
      "Cash Back"
    ];

    List financeBodyIcon = [
      "assets/bill.png",
      "assets/shop.png",
      "assets/charity.png",
      "assets/splitbill.png",
      "assets/gift.png",
      "assets/cashback.png",
    ];
    final double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = MediaQuery.of(context).size.width / 2;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: height * 0.25,
                    color: Color.fromRGBO(158, 183, 255, 1),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/jhony.jpg"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Hi, Jhony Pranata",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20, height * 0.15, 20, 0),
                      child: Container(
                        height: height * 0.22,
                        width: double.infinity,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "My Balance",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.grey),
                                    ),
                                    Text(
                                      "Rp 1.000.000",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: GridView.count(
                                    childAspectRatio: 1,
                                    crossAxisCount: 4,
                                    children: [
                                      for (var i = 0; i < 4; i++)
                                        Center(
                                            child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/wallet.png",
                                              width: 60,
                                              height: 60,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              paymentText[i],
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  child: GridView.count(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    childAspectRatio: (3),
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      for (var i = 0; i < 6; i++)
                        Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    financeBodyIcon[i],
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    financeBodyText[i],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Promo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imageSliders,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
