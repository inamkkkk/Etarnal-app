import 'package:dating_app/models/category.dart';
import 'package:dating_app/models/utils.dart';
import 'package:dating_app/screens/likes_and_interest_screen.dart';
import 'package:dating_app/screens/profile_home/bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TopPickerClass extends StatefulWidget {
  const TopPickerClass({Key? key}) : super(key: key);

  @override
  _TopPickerClassState createState() => _TopPickerClassState();
}

class _TopPickerClassState extends State<TopPickerClass> {
  List<Category> categories = Utils.getMockedCategories();
  List<String> imageUrl = [
    "assets/girlb.jpg",
    "assets/girlc.jpg",
    "assets/girld.jpg",
    "assets/girle.jpg",
    "assets/girlb.jpg",
    "assets/girla.jpg",
    "assets/girld.jpg",
    "assets/girlc.jpg",
    "assets/girle.jpg",
    "assets/girlc.jpg",
    "assets/girld.jpg",
    "assest/girlb.jpg",
  ];
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
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.white38,
              ),
            ),
            ClipPath(
              clipper: ArcClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                color: Colors.white24,
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    'Top Picks',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 0.8,
                    shrinkWrap: true,
                    children: List.generate(
                      categories.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (contex) =>
                                              const LikesAndDislikesClass()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          categories[index].imageName),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 100,
                                left: 65,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 14,
                                    child: categories[index].icon,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 8.0,
                                child: Text(
                                  categories[index].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 43,
                                child: Text(
                                  categories[index].number.toString(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
