import 'package:financeapplication/GlobalAppBar.dart';
import 'package:financeapplication/RegisterStep2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class RegisterStep1 extends StatelessWidget {
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
          "Step 1/2",
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
                "assets/register1.json",
                width: 250,
                height: 250,
                repeat: false
              ),
              Text(
                "Registration",
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
                  "Enter your mobile number, We will send you OTP to verify later",
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
                child: TextField(
                  textAlign: TextAlign.center,
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(RegisterStep2());
                  },
                  child: Text(
                    "Continue"
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
