import 'package:dating_app/constant/constant.dart';
import 'package:flutter/material.dart';

class CreateOrUploadPhoto extends StatefulWidget {
  const CreateOrUploadPhoto({Key? key}) : super(key: key);

  @override
  _CreateOrUploadPhotoState createState() => _CreateOrUploadPhotoState();
}

class _CreateOrUploadPhotoState extends State<CreateOrUploadPhoto> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.2, left: size.width * 0.1),
              child: Text(
                " Create New",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.01, left: size.width * 0.15),
              child: Text(
                "Select a content type",
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.1),
                width: 300,
                height: 100,
                decoration: createbuttonDecoration(
                  LinearGradient(colors: [
                    Colors.black.withBlue(100),
                    Colors.black.withBlue(50),
                  ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "Upload",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 30),
                          child: Text(
                            "Photo",
                            style: TextStyle(
                                color: white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.photo_album_rounded,
                        color: white,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 100,
                decoration: createbuttonDecoration(
                  LinearGradient(colors: [
                    Colors.black.withBlue(30),
                    Colors.black.withBlue(30),
                  ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "Upload",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 30),
                          child: Text(
                            "Video",
                            style: TextStyle(
                                color: white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.video_camera_back_outlined,
                        color: white,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 100,
                decoration: createbuttonDecoration(
                  LinearGradient(colors: [
                    Colors.black.withGreen(30),
                    Colors.black.withGreen(30),
                  ]),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "Upload",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 30),
                          child: Text(
                            "Camera",
                            style: TextStyle(
                                color: white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: white,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
