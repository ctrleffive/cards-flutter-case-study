import 'package:cards/src/constants/style.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleConstants.appColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: StyleConstants.appPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(Icons.menu),
                          onTap: () {},
                        ),
                        GestureDetector(
                          child: Icon(Icons.search),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Trending',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 35,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: StyleConstants.appRadius,
                            color: Colors.deepOrange,
                          ),
                          child: Text('Animated'),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '25+ stories',
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: PageView(
                  controller: PageController(
                    viewportFraction: 0.9,
                  ),
                  children: <Widget>[
                    AppCard(id: 1),
                    AppCard(id: 2),
                    AppCard(id: 3),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: StyleConstants.appPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Favorite',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 35,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: StyleConstants.appRadius,
                            color: Colors.blueAccent,
                          ),
                          child: Text('Animated'),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '25+ stories',
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: PageView(
                  controller: PageController(
                    viewportFraction: 0.9,
                  ),
                  children: <Widget>[
                    AppCard(id: 4),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppCard extends StatelessWidget {
  final int id;

  AppCard({this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 20, left: 3),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: StyleConstants.appRadius,
        color: Colors.white10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'The Dreaming Moon',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w400,
              fontSize: 23,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: StyleConstants.appRadius,
              color: Colors.blueAccent,
            ),
            child: Text('Animated'),
          ),
        ],
      ),
    );
  }
}
