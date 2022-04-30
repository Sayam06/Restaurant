import 'package:educircle/app/edmart_screen/buy_course_screen.dart';
import 'package:educircle/app/login_screen/login_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class EdmartCoursesScreen extends StatefulWidget {
  static const routeName = "/edmart-courses-screen";

  @override
  State<EdmartCoursesScreen> createState() => _EdmartCoursesScreenState();
}

class _EdmartCoursesScreenState extends State<EdmartCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Body(maxWidth: constraints.maxWidth);
    });
  }
}

class Body extends StatefulWidget {
  var maxWidth;
  var isWidescreen = false;
  Body({this.maxWidth}) {
    if (maxWidth < 600) {
      isWidescreen = false;
    } else {
      isWidescreen = true;
    }
  }

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final searchController = new TextEditingController();

  List freeCoursesData = [
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Droppers: Advance Course on Modern Physics for JEE 2022",
      "img": "images/course2.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Non auctor",
      "price": "Rs. 3457.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
  ];
  List topCoursesYouMayLikeData = [
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Droppers: Advance Course on Modern Physics for JEE 2022",
      "img": "images/course2.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Non auctor",
      "price": "Rs. 3457.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
  ];
  List hotTopicData = [
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Droppers: Advance Course on Modern Physics for JEE 2022",
      "img": "images/course2.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Non auctor",
      "price": "Rs. 3457.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
  ];
  List recommendedData = [
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Droppers: Advance Course on Modern Physics for JEE 2022",
      "img": "images/course2.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Non auctor",
      "price": "Rs. 3457.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
  ];
  List internetWiseData = [
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Droppers: Advance Course on Modern Physics for JEE 2022",
      "img": "images/course2.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Non auctor",
      "price": "Rs. 3457.00",
      "tags": ["English", "Hindi"]
    },
    {
      "title": "Complete Course on Organic Chemistry for JEE Main",
      "img": "images/course1.png",
      "date": "Mar 30, 2019 • 20 videos",
      "numberOfVideos": "",
      "sub": "Integer porttitor",
      "price": "Rs. 1999.00",
      "tags": ["English", "Hindi"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: widget.maxWidth,
              height: 50,
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: widget.maxWidth / 30,
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          // SizedBox(
                          //   width: widget.maxWidth / 30,
                          // ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 5,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: kDarkpink2,
                                ),
                                Text(
                                  "Courses",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    Flexible(
                      flex: 2,
                      child: Container(
                          width: widget.maxWidth,
                          child: Text(
                            "Edmart",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                    // Spacer(),
                    Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("images/heart_grey.png"),
                            // SizedBox(
                            //   width: 2,
                            // ),
                            Image.asset("images/book shelf.png"),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            Container(
              width: widget.maxWidth,
              height: 20,
              color: Colors.white,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(2),
                      // width: widget.maxWidth / 1.3,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(31),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset("images/search_black.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: TextField(
                            controller: searchController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Color.fromRGBO(0, 0, 0, 0.4),
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: pink,
                              borderRadius: BorderRadius.circular(31),
                            ),
                            child: Center(
                              child: Text(
                                "Search",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("images/filter.png")
                ],
              ),
            ),
            Container(
              width: widget.maxWidth,
              height: 20,
              color: Colors.white,
            ),
            Container(
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ),
                child: Row(
                  children: [
                    courseTypeLabel("Degree courses"),
                    courseTypeLabel("Certified courses"),
                    courseTypeLabel("Crash courses"),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: widget.maxWidth,
            //   height: 20,
            //   color: Colors.white,
            // ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: widget.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Free courses",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) {
                              return courseTiles(freeCoursesData, index);
                            },
                            itemCount: freeCoursesData.length,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widget.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Top courses you may like",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) {
                              return courseTiles(topCoursesYouMayLikeData, index);
                            },
                            itemCount: topCoursesYouMayLikeData.length,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widget.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hot topic",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) {
                              return courseTiles(hotTopicData, index);
                            },
                            itemCount: hotTopicData.length,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widget.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Recommended",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) {
                              return courseTiles(recommendedData, index);
                            },
                            itemCount: recommendedData.length,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widget.maxWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Internet wise",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 320,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.none,
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) {
                              return courseTiles(freeCoursesData, index);
                            },
                            itemCount: internetWiseData.length,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  GestureDetector courseTiles(List data, int index) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(BuyCourseScreen.routeName),
      child: Container(
        height: 300,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Color.fromRGBO(0, 0, 0, 0.2),
            )),
        margin: index == 0
            ? EdgeInsets.only(right: 10)
            : index == data.length - 1
                ? EdgeInsets.only(left: 10)
                : index != 0
                    ? EdgeInsets.symmetric(horizontal: 10)
                    : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Container(
                height: 150,
                width: 250,
                child: Image.asset(
                  data[index]["img"],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                data[index]["title"],
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                data[index]["date"],
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Text(
                      data[index]["sub"],
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      data[index]["price"],
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Wrap(
              children: [
                ...data[index]["tags"].map((e) {
                  return Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: klightpink,
                    ),
                    child: Text(
                      e,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        color: Colors.grey[700],
                      ),
                    ),
                  );
                })
              ],
            ))
          ],
        ),
      ),
    );
  }

  Container courseTypeLabel(String label) {
    return Container(
      width: widget.maxWidth / 3.017,
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontFamily: "Poppins", fontSize: 14),
        ),
      ),
    );
  }
}
