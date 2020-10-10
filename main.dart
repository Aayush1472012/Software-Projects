import 'package:chat_globe/app_screens/registration_page.dart';
import 'package:flutter/material.dart';

import 'app_screens/login_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Chat Globe",
    home: MyApp(),
    theme: ThemeData(
    brightness: Brightness.light,
    ),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Globe"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.green,Colors.redAccent]
            )
          ),
          child: ListView(
            children: [

              getImageAsset(),

              Center(
                child:Text(
                  "WELCOME TO CHAT GLOBE",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30.0,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30.0,bottom: 10.0,right: 150.0,left: 150.0),
                child: RaisedButton(
                  child: Text(
                      "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  elevation: 6.0,
                  color: Colors.deepPurpleAccent,
                  onPressed: (){
                     Navigator.of(context).push(
                         MaterialPageRoute(
                           builder: (context) => RegForm()
                         )
                     );
                  },
                ),
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                  child:Text(
                    "Or",
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0,right: 150.0,left: 150.0),
                child: RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  elevation: 6.0,
                  color: Colors.deepPurpleAccent,
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => LogForm()
                        )
                    );
                  },
                ),
              ),

            ],
          ),
      ),
    );
  }

  Widget getImageAsset(){
    AssetImage assetImage = AssetImage('images/icon.png');
    Image image = Image(image: assetImage, width: 150.0,height: 150.0,);

    return Container(child: image,margin: EdgeInsets.all(45.0),);
  }
}
