import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import 'ScanTheObjectPage.dart';

class LandingPageState extends StatefulWidget {
  const LandingPageState({Key? key}) : super(key: key);

  @override
  State<LandingPageState> createState() => LandingPage();

}

class LandingPage extends State<LandingPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  //Scaffold used to implements the basic material design visual layout structure
        body: Stack(
          children: [
            Container( //Container  used to store more widgets and position it on the screen accordingly
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.cyan, Colors.blueGrey])),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.0),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image(
                        image: AssetImage('assets/images/logo_transparent.png'), //image added
                      ),
                    ),
                    Center(
                        child: Container(
                            decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(30)),
                            child: GlassContainer(
                              height: 550,
                              width: 300,
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(colors: [
                                Colors.white.withOpacity(0.60),
                                Colors.white.withOpacity(0.60)
                              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                              borderGradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.70),
                                  Colors.white.withOpacity(0.20),
                                  Colors.lightBlueAccent.withOpacity(0.10),
                                  Colors.lightBlueAccent.withOpacity(0.12)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                stops: [0.0, 0.39, 0.40, 1.0],
                              ),
                              blur: 15.0,
                              borderWidth: 1.5,
                              elevation: 3.0,
                              isFrostedGlass: true,
                              shadowColor: Colors.black.withOpacity(0.20),
                              alignment: Alignment.center,
                              frostedOpacity: 0.2,
                              margin: EdgeInsets.all(8.0),
                              padding: EdgeInsets.all(8.0),
                              child: Column(children: [
                                SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  "This application is made for the verbally impaired people and normal people who are interested in learning sign language",
                                  style: TextStyle(
                                    color: Colors.cyan[900],
                                    fontSize: 18.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(
                                  height: 250.0,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RaisedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanTheObjectState())); //navigate to the scan the object page once the button is clicked
                                        },
                                        color: Colors.lightBlue[400],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                        child: Text(
                                          "Scan the object", //button text
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                    Text("!Tip:Tap the button to scan object",
                                      style: TextStyle(color: Colors.cyan[900],
                                        fontSize: 18.0,
                                        fontStyle: FontStyle.italic,),
                                    ),
                                  ],
                                )
                              ]),
                            )))
                  ],
                ))
          ],
        ));
  }
}