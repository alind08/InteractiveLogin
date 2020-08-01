import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';
import './submit_button.dart';
import './actor_controller.dart';
import './tracker.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TeddyController _teddyController;
  @override
  initState() {
    _teddyController = TeddyController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets devicePadding = MediaQuery.of(context).padding;

    return Scaffold(
      //backgroundColor: Color.fromRGBO(293, 242, 255, 0.5),
      body: Container(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      // Box decoration takes a gradient
                      gradient: LinearGradient(
                        // Where the linear gradient begins and ends
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        // Add one stop for each color. Stops should increase from 0 to 1
                        stops: [0.0, 1.0],
                        colors: [
                          Color.fromRGBO(120, 92, 147, 1.0),
                          Color.fromRGBO(155, 82, 135, 1.0)
                        ],
                      ),
                    ),
                  )),
              Positioned.fill(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: devicePadding.top + 25.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              height: 200,
                              padding: const EdgeInsets.only(left: 20.0, right:20.0),
                              child: FlareActor(
                                "assets/Teddy.flr",
                                shouldClip: false,
                                alignment: Alignment.bottomCenter,
                                fit: BoxFit.fill,
                                controller: _teddyController,
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Form(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          child: TrackingTextInput(
                                              label: "Email",
                                              onCaretMoved: (Offset caret) {
                                                _teddyController.lookAt(caret);
                                              }),
                                        ),
                                        TrackingTextInput(
                                          label: "Password",
                                          //isObscured: true,
                                          onCaretMoved: (Offset caret) {
                                            _teddyController.coverEyes(caret != null);
                                            _teddyController.lookAt(null);
                                          },
                                          onTextChanged: (String value) {
                                            _teddyController.setPassword(value);
                                          },
                                        ),
                                        SigninButton(
                                            child: Text("Sign In",
                                                style: TextStyle(
                                                    fontFamily: "RobotoMedium",
                                                    fontSize: 16,
                                                    color: Colors.white)),
                                            onPressed: () {
                                              _teddyController.submitPassword();
                                            })
                                      ],
                                    )),
                              )),
                          SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                child: SignInButton(
                                  Buttons.Facebook,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(width: 20,),
                              SizedBox(
                                child: SignInButton(
                                  Buttons.GitHub,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(width: 20,),
                              SizedBox(
                                child: SignInButton(
                                  Buttons.Twitter,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(width: 20,),
                              SizedBox(
                                child: SignInButton(
                                  Buttons.Pinterest,
                                  mini: true,
                                  onPressed: () {},
                                ),
                                height: 50,
                                width: 50,
                              ),
                            ],
                          )
                        ])),
              ),
            ],
          )),
    );
  }
}