import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
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
            "Login",
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
                    "assets/login.json",
                    width: 250,
                    height: 250,
                    repeat: false
                ),
                Text(
                  "Login",
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
                    "One step away to access your best finance app",
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
                  width: 300,
                  child: TextField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon : Icon(
                        Icons.phone_android
                      ),
                      labelText: "Phone no",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: TextField(
                    autocorrect: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon : Icon(
                            Icons.vpn_key
                        ),
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                        )
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

                    },
                    child: Text(
                      "Login"
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
