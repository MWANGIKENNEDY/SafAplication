import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_background/pages/main_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Stack(
          children: [
            //CONTAINER TO ADD BACKGROUND IMAGE
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("images/porsche.jpg"),
                    fit: BoxFit.cover
                ),
              ),
              //BLUR the image ::::
              child: new BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                child: Container(
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
            Center(
                child: myCardContent(context)
            )
          ],
        )
    );
  }

//WIDGET TO CREATE TRANSPARENT BLUR EFFECT
  Widget myCard(Widget child){
    return ClipRRect(
      borderRadius:BorderRadius.circular(20.0),
      child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10,sigmaY: 10),
          child: child
      ),
    );
  }

  //CONTAINER TO BE BLURRED
  Widget myCardContent(BuildContext context){
    return myCard(
      Container(
        color: Colors.white.withOpacity(0.3),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.account_circle,size: 50,),
            ),
            Text(
              "Kennedy Mwangi",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "I LOVE PORSCHE",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Porsche',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            RaisedButton(
              onPressed: (){
                //Navigate to new page
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>MainPage()
                )
                );
              },
              child: Text(
                "Start Game",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
