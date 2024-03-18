import 'package:flutter/material.dart';

class SignUp1 extends StatelessWidget
{
  int toggleIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
          children: [
            SizedBox(height: size.height*0.09,),
            SizedBox(
              width: size.width*0.2,
              height: size.height*0.1,
              child: Card(
                child: Icon(Icons.shopping_cart,size: size.width*0.1,),
              ),
            ),
            Spacer(),
            Text("Create your Account",style: TextStyle(fontSize: size.width*0.07),),
            Spacer(flex: 1,),
            SizedBox(
              width: size.width*0.88,
              child: Card(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: size.height*0.08,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Enter Email Address",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      alignment: Alignment.center,
                      height: size.height*0.08,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Enter Email Address",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      alignment: Alignment.center,
                      height: size.height*0.08,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Enter Email Address",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.03,
            ),
            SizedBox(
              height: size.height*0.075,
              width: size.width*0.88,
              child: Card(
                color: Colors.yellow,
                child: Center(child: Text("Signup",style: TextStyle(color: Colors.black),),),
              ),
            ),
            Spacer(),

            Spacer(flex: 5,),
          ],
        ),
      );
  }
}