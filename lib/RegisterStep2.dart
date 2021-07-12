import 'package:financeapplication/HomePage.dart';
import 'package:financeapplication/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:otp_text_field/otp_field.dart';

class RegisterStep2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          centerTitle: true,
          title: Text(
            "Step 2/2",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(
                  "assets/register2.json",
                  width: 250,
                  height: 250,
                  repeat: false,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Verification",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "Enter 4 digit number that send to you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: OTPTextField(
                    length: 4,
                  )
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: "",
                        titleStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        content: Column(
                          children: [
                            Lottie.asset("assets/register_complete.json"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Congratulation"
                            ),
                            Text(
                              "Now you are registered",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(MainPage());
                                },
                                child: Text(
                                  "Start Now"
                                ),
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                  )),
                                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(158, 183, 255, 1)),
                                ),
                              ),
                            ),
                          ],
                        )
                      );
                    },
                    child: Text(
                        "Complete"
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(158, 183, 255, 1)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                        ))
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
