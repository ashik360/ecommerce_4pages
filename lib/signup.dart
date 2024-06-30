import 'package:ecommerce/signin.dart';
import 'package:ecommerce/userdata.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const String path = "SignUp";
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0XFFFF7565),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 668,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55),
                          topRight: Radius.circular(55),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Welcome Back!",
                                      style: TextStyle(
                                        color: Color(0XFFFF7565),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Glad To See You Back My Buddy.",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 45,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  textInputAction: TextInputAction.next,
                                  decoration: InputDecoration(
                                    //border: OutlineInputBorder(),
                                    labelText: "  Email",
                                    hintText: "xyz@gmail.com",
                                    prefixIcon: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent,
                                      child: Icon(
                                        Icons.mail_outline,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                TextField(
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    label: Text("  Phone"),
                                    hintText: "Ex: 01234567890",
                                    prefixIcon: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent,
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                TextField(
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    label: Text("  Password"),
                                    hintText: "Enter Password",
                                    prefixIcon: Material(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.redAccent,
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ),
                                    ),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_red_eye),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 80,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, UserData.path);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "CONTINUE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Already Have An Account?",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, SignIn.path);
                                      },
                                      child: Text("SignIn"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
