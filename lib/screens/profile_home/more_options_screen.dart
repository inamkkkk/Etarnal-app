import 'package:dating_app/screens/more_option_screens/children_screen.dart';
import 'package:dating_app/screens/more_option_screens/drinking_screen.dart';
import 'package:dating_app/screens/more_option_screens/education_screen.dart';
import 'package:dating_app/screens/more_option_screens/language_screen.dart';
import 'package:dating_app/screens/more_option_screens/looking_for_screen.dart';
import 'package:dating_app/screens/more_option_screens/more_height_screen.dart';
import 'package:dating_app/screens/more_option_screens/personality_screen.dart';
import 'package:dating_app/screens/more_option_screens/pets_screen.dart';
import 'package:dating_app/screens/more_option_screens/photo_verify_screen.dart';
import 'package:dating_app/screens/more_option_screens/relationship_screen.dart';
import 'package:dating_app/screens/more_option_screens/religion_screen.dart';
import 'package:dating_app/screens/more_option_screens/sexuality_screen.dart';
import 'package:dating_app/screens/more_option_screens/smoking_screen.dart';
import 'package:dating_app/screens/more_option_screens/star_sign_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreOption extends StatelessWidget {
  const MoreOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00897B),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 15),
                      child: Icon(
                        CupertinoIcons.xmark,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 70),
                      child: Text(
                        'More Options',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 70),
                      child: Text(
                        'Clear All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 35, right: 20),
                  child: Text(
                    'Your first 3 are on us! Get Premium to use tem all',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => PhotoVerification());
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Photo verified',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 160, top: 17),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'Are their photos for real',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => MoreHeightScreen());
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.height,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Height',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 205, top: 17),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'Want someone you can look up to?',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => SexualityScreen());
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.airline_seat_recline_extra_sharp,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Sexuality',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 190, top: 17),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  "what's their relationship goals",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => LookingForScreen());
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Looking For',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 170, top: 17),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'What are their relationship goals?',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => StarSignScreen());
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.share,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Star sign',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 190, top: 17),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  "what's written in their stars",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => LnaguageScreen());
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.language,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Language',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 185, top: 17),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  'Will you understand each other?',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 220),
                    child: Text(
                      'Lifestyle',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => ChildrenScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.child_care,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Children',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 190, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    'Have  them? want them? No sure?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => PetsScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.pets,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Pets',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 215, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    'Kitty litter or morning walkies',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => SmokingScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.smoking_rooms_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Smoking',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 190, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    "Do you mind if they light up?",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => DrinkingScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.no_drinks_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Drinking',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 190, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    'will you raise a glass together?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => EducationScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.cast_for_education,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Education',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 180, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    "Diploma, or school of life?",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => ReligionScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    Icons.clean_hands,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Reliogion',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 185, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    'What do you belive in?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) => RelationshipScreen());
                      },
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Relationship',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 170, top: 17),
                                  child: Icon(Icons.arrow_forward_ios),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(
                                    'Are they single and ready to mingle?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      context: context,
                      builder: (context) => PersonalityScreen());
                },
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 220),
                        child: Text(
                          'Personality',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16),
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Icon(
                                      Icons.person_add_sharp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      'Personnality',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 170, top: 17),
                                    child: Icon(Icons.arrow_forward_ios),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Text(
                                      "what's their social style?",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.5,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Color(0xFF00897B),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 30,
                                    offset: Offset(3, 3),
                                    color: Colors.black.withOpacity(0.4)),
                              ],
                              // color: Color(0xFF00897B),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Apply',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 1,
                                      fontSize: 25)),
                            ),
                          )),
                      Container(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
