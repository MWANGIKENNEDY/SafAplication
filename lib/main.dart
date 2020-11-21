import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background/model/data_model.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeGrid(),
    );
  }
}


class HomeGrid extends StatefulWidget {
  @override
  _HomeGridState createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        title: Text("MENU"),
        actions: [
          Image.asset("images/saflogo.png",width: 98,),
          Icon(Icons.search,size: 40,),
          Icon(Icons.home,size: 35,)
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage("images/b5.jpg"),
                fit: BoxFit.cover
              )
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 0,sigmaY: 0),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            height: 54,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    "Welcome  KENNEDY",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:48),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
                Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:6.0,left:9),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius:39.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 36.0,
                                backgroundImage: AssetImage(
                                    "images/k10.jpg"
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.lightBlueAccent,
                                          radius: 15.0,
                                          backgroundImage: AssetImage(
                                            "images/add.png"
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              child: Text("Add",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:6.0,left:9),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 39.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 36.0,
                                backgroundImage: AssetImage("images/k9.jpg"),

                              ),

                            ),
                            Expanded(child: Text("User 1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:6.0,left:9),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 39.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 36.0,
                                backgroundImage: AssetImage("images/k12.jpg"),

                              ),

                            ),
                            Expanded(child: Text("User 2",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:6.0,left:9),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 39.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 36.0,
                                backgroundImage: AssetImage("images/k8.jpg"),

                              ),

                            ),
                            Expanded(child: Text("User 3",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:6.0,left:9),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 39.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 36.0,
                                backgroundImage: AssetImage("images/k7.jpg"),

                              ),

                            ),
                            Expanded(child: Text("User 4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:6.0,left:9),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 39.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 36.0,
                                backgroundImage: AssetImage("images/k5.jpg"),

                              ),

                            ),
                            Expanded(child: Text("User 5",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),))
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 172.0),
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(safModel.length, (index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: myCardContent(index),
              ),
            ),
          ),
          )
        ],
      )
    );
  }

  Widget myCard(Widget child){
    return ClipRRect(
      borderRadius:BorderRadius.circular(6.0),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 3,sigmaY: 3),
          child: child,
        ),

    );
  }

  Widget myCardContent(int index){
    return myCard(
      Container(
        color: Colors.white.withOpacity(0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 11.0,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 27,
                  backgroundColor: safModel[index].color,
                backgroundImage: AssetImage(safModel[index].image)
              ),

            ),
            SizedBox(
              height: 7.0,
            ),
            Expanded(
              child: Text(safModel[index].text,
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,

                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      )

    );
  }
}





