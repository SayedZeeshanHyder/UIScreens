import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:mycap/screens/login1/login1.dart';
import 'package:mycap/screens/login1/signup1.dart';

class Toggler extends StatefulWidget
{
  @override
  State<Toggler> createState() => _TogglerState();
}

class _TogglerState extends State<Toggler> {
  int toggleIndex = 0;

  List<Widget> list = [
    Login1(),
    SignUp1()
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: list[toggleIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: size.width*0.8,
        child: AnimatedToggleSwitch.dual(
          animationDuration: Duration(seconds: 1),
          current: toggleIndex,
          first: 0,
          second: 1,
          textBuilder: (index){
            if(index == 0)
            {
              return Text("Login",style: TextStyle(color: Colors.white),);
            }
            return Text("Sign Up",style: TextStyle(color: Colors.black),);
          },
          style: ToggleStyle(
            backgroundColor: toggleIndex == 0 ? Colors.blue : Colors.yellow,
          ),
          onChanged: (index){
            setState(() {
              toggleIndex = index;
            });
          },
        ),
      ),
    );
  }
}