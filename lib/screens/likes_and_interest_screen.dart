import 'package:dating_app/screens/buttonclass.dart';
import 'package:dating_app/screens/matches_search_screen.dart';
import 'package:dating_app/screens/profile_home/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LikesAndDislikesClass extends StatefulWidget {
  const LikesAndDislikesClass({Key? key}) : super(key: key);

  @override
  _LikesAndDislikesClassState createState() => _LikesAndDislikesClassState();
}

class _LikesAndDislikesClassState extends State<LikesAndDislikesClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: Colors.white70,
                ),
              ),
              ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  color: Colors.white38,
                ),
              ),
              Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'Likes',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.07,
                              width: MediaQuery.of(context).size.width * 0.07,
                              child: const VerticalDivider(
                                color: Colors.teal,
                                thickness: 3,
                              ),
                            ),
                            const Text(
                              'Interest',
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 3,
                          color: Colors.teal,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.3,
                          image: const AssetImage(
                            'assets/logo.png',
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          'See people who liked you and matches you on Ethernal',
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ButtonApplyClass(
                      name: 'SEE WHO LIKES YOU',
                      onpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => const MatchesScreen()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar()
        //  BottomNavigationBar(
        //   backgroundColor: Colors.teal,
        //   items: const <BottomNavigationBarItem>
        // [
        //   BottomNavigationBarItem(icon:  Icon(
        //                         Icons.emoji_emotions_rounded,
        //                         color: Colors.white,
        //                         size: 50.0,
        //                       ),),
        //   BottomNavigationBarItem(icon:  Icon(
        //                         Icons.phone,
        //                         color: Colors.white,
        //                         size: 50.0,
        //                       ),),
        //   BottomNavigationBarItem(icon:  Icon(
        //                         Icons.favorite,
        //                         color: Colors.white,
        //                         size: 50.0,
        //                       ),),
        //   BottomNavigationBarItem(icon:  Icon(
        //                         Icons.messenger_outline_sharp,
        //                         color: Colors.white,
        //                         size: 50.0,
        //                       ),),
        //   BottomNavigationBarItem(icon:  CircleAvatar(
        //                         radius: 25,
        //                         backgroundColor: Colors.white,
        //                         child: Icon(
        //                           Icons.person,
        //                           color: Colors.teal,
        //                           size: 50.0,
        //                         ),
        //                       ),),
        // ]

        // ),

        );
  }
}
