import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
                height: 180.0,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                autoPlay: true,
                viewportFraction: 0.8),
            items: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/heart_bg_assets.png")),
                    Text(
                      "See Who likes you",
                      style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See Who likes you",
                      style: TextStyle(
                        color: black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icon(
                    //   CupertinoIcons.suit_diamond_fill,
                    //   size: 50,
                    //   color: Colors.green,
                    // ),
                    Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/diamond_assets_bg.png")),

                    Text(
                      "Buy more Top picks",
                      style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Get full access to Top picks, like you send unlimited likes & more",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/boys_girls_assets_bg.png")),
                    Text(
                      "Unlimited Matches",
                      style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Get Full access to unlimited likes & more",
                      style: TextStyle(
                        color: black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/message_asset_bg.png")),
                    Text(
                      "Unlimied Messages",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Get Full access to unlimited messages",
                      style: TextStyle(
                        color: black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/ads_assets_bg.png")),
                    Text(
                      "5 Star Profile Boost Up",
                      style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Skip the line & get more matches",
                      style: TextStyle(
                        color: black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        child: Image.asset("assets/ads_assets_bg.png")),
                    Text(
                      "Turn Off Ads",
                      style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Have fun without interruptions",
                      style: TextStyle(
                        color: black,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
