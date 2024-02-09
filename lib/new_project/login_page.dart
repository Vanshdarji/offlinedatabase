import 'package:flutter/material.dart';
import 'package:helloohoney/helper/images.dart';
import 'package:velocity_x/velocity_x.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool choice = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
          child: Center(
              child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 50)),
          Text(
            "Welcome Master",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          10.heightBox,
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                label: Text("Enter Your Email Here"),
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.black,
                )),
          ),
          10.heightBox,
          TextFormField(
            obscureText: choice,
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                label: Text("Enter Your Password Here"),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                suffixIcon: choice == false
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            choice = true;
                          });
                        },
                        icon: Icon(Icons.visibility))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            choice = false;
                          });
                        },
                        icon: Icon(Icons.visibility_off))),
          ),
          10.heightBox,
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(color: Colors.black),
              )),
          10.heightBox,
          ElevatedButton(
            onPressed: () {},
            style:
                ElevatedButton.styleFrom(primary: Colors.blue),
            child: Text(
              "Sing Up",style: TextStyle(color: Colors.black),
            ),
          ),
          30.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                applelogo,
                height: 50,
                width: 50,
              ),
              20.widthBox,
              Image.asset(
                googlelogo,
                height: 50,
                width: 50,
              ),
              20.widthBox,
              Image.asset(
                twitterlogo,
                height: 50,
                width: 50,
              )
            ],
          ),
          10.heightBox,
          TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Your Email Or Password ?",
                style: TextStyle(
                    color: Color.fromARGB(255, 212, 100, 92), fontSize: 20),
              ))
        ],
      )
                  .box
                  .color(Colors.white)
                  .padding(EdgeInsets.all(8))
                  .roundedLg
                  .height(context.screenHeight - 180)
                  .width(context.screenWidth - 30)
                  .make())
          // .box
          // .color(Colors.black)
          // .make()),
          ),
    );
  }
}


// TextField(
//                     obscureText: choice,
//                     controller: password,
//                     decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(12)),
//                         hintText: "********",
//                         labelText: "Password",
//                         suffixIcon: choice == true
//                             ? IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     choice = false;
//                                   });
//                                 },
//                                 icon: Icon(Icons.visibility_off))
//                             : IconButton(
//                                 onPressed: () {
//                                   setState(() {
//                                     choice = true;
//                                   });
//                                 },
//                                 icon: Icon(Icons.visibility))),