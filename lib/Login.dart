/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String pass = "admin";
  String animationType = "idle";
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2980b9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                  width: 200,
                )    ,


                //space for teddy actor
                Center(
                  child: Container(
                      height: 300,
                      width: 300,

                      child: CircleAvatar()
                  ),
                ),


                //just for vertical spacing
                SizedBox(
                  height: 80,
                )    ,


                //container for textfields user name and password
                Container(
                  height: 140,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white
                  ),

                  child: Column(
                    children: <Widget>[

                      TextFormField(
                        decoration: InputDecoration(border: InputBorder.none, hintText: "User name", contentPadding: EdgeInsets.all(20)),
                      ),

                      Divider(),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(border: InputBorder.none, hintText: "Password", contentPadding: EdgeInsets.all(20)),
                        controller: passwordController,
                        focusNode: passwordFocusNode,
                      ),

                    ],
                  ),
                ),

                //container for raised button
                Container(
                  width: 350,
                  height: 70,
                  padding: EdgeInsets.only(top: 20),
                  child: RaisedButton(
                      color: Colors.pink,
                      child: Text("Submit", style: TextStyle(color: Colors.white),),

                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30),
                      ),
                      onPressed: () {
                        if(passwordController.text.compareTo(pass) == 0){
                          setState(() {
                            animationType = "success";
                          });

                        }else{
                          setState(() {
                            animationType = "fail";
                          });

                        }

                      }
                  ),
                )
              ],
            ),
          ),
          Container()
        ],
      ),
    );
  }
}

BoxDecoration loginBoxDecoration = BoxDecoration(
  color: const Color(0xffd8d9da),
);

*/