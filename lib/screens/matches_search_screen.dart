import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:dating_app/models/category.dart';
import 'package:dating_app/models/utils.dart';
import 'package:dating_app/screens/chat_detail_screen.dart';
import 'package:dating_app/screens/profile_home/bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  _MatchesScreenState createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  TextEditingController controller = TextEditingController();
  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          bottom: true,
          child: Stack(
            children: [
              // ClipPath(
              //   clipper: ArcClipper(),
              //   child: Container(
              //     height: MediaQuery.of(context).size.height * 0.57,
              //     color: Colors.white70,
              //   ),
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: AnimSearchBar(
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.teal,
                                size: 35.0,
                              ),
                              helpText: ' Search 0 matches',
                              color: Colors.white70,
                              width: 400,
                              textController: controller,
                              onSuffixTap: () {
                                setState(() {
                                  controller.clear();
                                });
                              },
                            ),
                          ),
                          FittedBox(
                            child: Column(
                              children: const [
                                Text(
                                  'New Matches',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                PinputClass(),
                                PinputClass(),
                                PinputClass(),
                                PinputClass(),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Messages',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              )
                            ],
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            10.0,
                          ),
                          topRight: Radius.circular(10.0),
                        ),
                        color: Colors.white70,
                      ),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: categories.length,
                          itemBuilder: (context, int index) {
                            return Container(
                              color: Colors.white24,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ChatDetailScreen()));
                                    },
                                    child: GFListTile(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 5),
                                      avatar: GFAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            categories[index].imageName),
                                      ),
                                      title: Row(
                                        children: [
                                          Text(
                                            categories[index].name,
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            categories[index].number.toString(),
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          const Icon(
                                            Icons.check_circle,
                                            color: Colors.blue,
                                            size: 30,
                                          )
                                        ],
                                      ),
                                      subTitle: const Text(
                                        'where are you',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 17,
                                        ),
                                      ),
                                      // color: Colors.white,
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 1,
                                    color: Colors.teal,
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar());
  }
}

class PinputClass extends StatelessWidget {
  const PinputClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 80,
        height: 110,
        decoration: BoxDecoration(
            color: Colors.teal[300],
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
              bottom: Radius.circular(30),
            )),
      ),
    );
  }
}
