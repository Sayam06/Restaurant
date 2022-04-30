import 'package:educircle/app/edmart_screen/place_order_screen.dart';
import 'package:educircle/app/login_screen/login_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class BuyCourseScreen extends StatefulWidget {
  static const routeName = "/buy-course-screen";

  @override
  State<BuyCourseScreen> createState() => _BuyCourseScreenState();
}

class _BuyCourseScreenState extends State<BuyCourseScreen> {
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
  int fullStar = 0;
  int halfStar = 0;
  bool isLoading = true;
  Map courseDetails = {
    "img": "images/course1.png",
    "heading": "Complete Course on Organic Chemistry for JEE Main",
    "subHeading": "Integer porttitor",
    "enrolled": "2445",
    "rating": 4.3,
    "totalRatings": "513",
    "overview": "Tortor id tellus, eu tristique sed dolor. Lorem non massa sit et eu id aliquet aliquet. Pellentesque vitae sit diam blandit tempus sapien eros. Proin lorem elementum aliquam lobortis.",
    "videos": "13",
    "exams": "3",
    "notes": "11",
    "audio": "4",
    "live session": "1",
    "eduleague": "1",
  };
  List chapterData = [
    {
      "no": "Chapter 1",
      "chapterName": "Soil",
      "data": [
        {
          "topic": "Topic 1: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 1.png",
          "price": "Rs 49",
        },
        {
          "topic": "Topic 2: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 2.png",
          "price": "Free",
        },
        {
          "topic": "Topic 2: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 3.png",
          "price": "Rs 5",
        },
      ]
    },
    {
      "no": "Chapter 2",
      "chapterName": "Light",
      "data": [
        {
          "topic": "Topic 1: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 1.png",
          "price": "Rs 49",
        },
        {
          "topic": "Topic 2: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 2.png",
          "price": "Free",
        },
        {
          "topic": "Topic 2: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 3.png",
          "price": "Rs 5",
        },
      ]
    },
    {
      "no": "Chapter 3",
      "chapterName": "Indian Climate",
      "data": [
        {
          "topic": "Topic 1: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 1.png",
          "price": "Rs 49",
        },
        {
          "topic": "Topic 2: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 2.png",
          "price": "Free",
        },
        {
          "topic": "Topic 2: Introduction of soil",
          "views": "322",
          "notes": "1",
          "videos": "7",
          "exams": "1",
          "img": "images/chapter 3.png",
          "price": "Rs 5",
        },
      ]
    },
  ];

  void calculateRating() {
    double rating = courseDetails["rating"] * 10;
    fullStar = (rating / 10).floor(); //toDouble().toInt(); // .floor();
    halfStar = (rating % 10).toInt();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    calculateRating();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading == false
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: widget.maxWidth / 30,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: kDarkpink2,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                          child: Text(
                        "Edmart",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                      Spacer(),
                      Container(
                          margin: EdgeInsets.only(
                            right: widget.maxWidth / 30,
                          ),
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  width: widget.maxWidth,
                                  height: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.asset(
                                      courseDetails["img"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 10,
                              child: Image.asset("images/heart_grey.png"),
                            ),
                            Positioned(
                                right: 20,
                                bottom: 10,
                                child: Container(
                                  width: 120,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Free",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.white,
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            courseDetails["heading"],
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            courseDetails["subHeading"],
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Flexible(
                                  child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("images/preview.png"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Preview",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                  ),
                                ),
                                child: Center(
                                  child: Text("Crash course",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.grey,
                                        fontSize: 14,
                                      )),
                                ),
                              ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed(PlaceOrderScreen.routeName),
                          child: Container(
                            width: widget.maxWidth,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              color: kDarkpink,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Buy now",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 20,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (ctx, i) {
                                        return Container(
                                          width: 20,
                                          // height: 10,
                                          child: Image.asset(
                                            "images/full star.png",
                                            fit: BoxFit.fill,
                                          ),
                                        );
                                      },
                                      itemCount: fullStar,
                                    ),
                                  ),
                                  halfStar != 0
                                      ? Container(
                                          width: 20,
                                          child: Image.asset(
                                            "images/half star.png",
                                            fit: BoxFit.fill,
                                          ),
                                        )
                                      : SizedBox()
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text(
                                        courseDetails["rating"].toString() + "/",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "5",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Text(
                                  "(" + courseDetails["totalRatings"] + ")",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                padding: EdgeInsets.only(top: 3),
                                child: Center(
                                  child: Text(
                                    courseDetails["enrolled"] + " Enrolled",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 1), // changes position of shadow
                            ),
                          ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  "Overview",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  courseDetails["overview"],
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  "Course content",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: widget.maxWidth,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Wrap(
                                  alignment: WrapAlignment.spaceAround,
                                  runSpacing: 10,
                                  children: [
                                    courseContentTile("images/video.png", '${courseDetails["videos"]}  Videos'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    courseContentTile("images/notes.png", '${courseDetails["notes"]}  Notes'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    courseContentTile("images/audio.png", '${courseDetails["audio"]} Audio'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    courseContentTile("images/exams.png", '${courseDetails["videos"]} Exams'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    courseContentTile("images/live session.png", '${courseDetails["live session"]} Live session'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    courseContentTile("", '${courseDetails["eduleague"]} Eduleague', 0),
                                    SizedBox(
                                      width: 2,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: chapterData.length,
                            itemBuilder: (ctx, i) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                                decoration: BoxDecoration(color: klightpink, borderRadius: BorderRadius.circular(5), boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 0,
                                    offset: Offset(1, 1),
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  )
                                ]),
                                child: ExpansionTile(
                                  textColor: Color.fromRGBO(176, 17, 133, 1),
                                  collapsedIconColor: Color.fromRGBO(176, 17, 133, 1),
                                  iconColor: Color.fromRGBO(176, 17, 133, 1),
                                  title: Container(
                                      margin: EdgeInsets.only(left: maxWidth / 100),
                                      child: Row(
                                        children: [
                                          Text(
                                            chapterData[i]["no"],
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              // fontWeight: FontWeight.bold,
                                              color: kDarkpink2,
                                            ),
                                          ),
                                          SizedBox(
                                            width: maxWidth / 10,
                                          ),
                                          Text(
                                            chapterData[i]["chapterName"],
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 16,
                                              // fontWeight: FontWeight.bold,
                                              color: Colors.grey[700],
                                            ),
                                          ),
                                        ],
                                      )),
                                  children: [
                                    Container(
                                        color: Colors.white,
                                        width: double.maxFinite,
                                        padding: EdgeInsets.only(top: 15, bottom: 15, left: maxWidth / 20, right: maxWidth / 20),
                                        child: ListView.builder(
                                            physics: NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: chapterData[i]["data"].length,
                                            itemBuilder: (ctx, index) {
                                              return Container(
                                                margin: EdgeInsets.only(bottom: 10),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Image.asset(chapterData[i]["data"][index]["img"]),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              chapterData[i]["data"][index]["topic"],
                                                              softWrap: true,
                                                              style: TextStyle(
                                                                fontFamily: "Poppins",
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              '${chapterData[i]["data"][index]["views"]} views',
                                                              style: TextStyle(
                                                                fontFamily: "Poppins",
                                                                fontSize: 12,
                                                                // fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Spacer(),
                                                        Image.asset("images/heart outline.png")
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                            child: Wrap(
                                                          spacing: 10,
                                                          runSpacing: 5,
                                                          children: [
                                                            courseContentTile("images/notes.png", '${chapterData[i]["data"][index]["notes"]}  Notes', 0, false),
                                                            courseContentTile("images/video.png", '${chapterData[i]["data"][index]["videos"]}  Videos', 0, false),
                                                            courseContentTile("images/exams.png", '${chapterData[i]["data"][index]["exams"]}  Exams', 0, false),
                                                          ],
                                                        )),
                                                        Column(
                                                          children: [
                                                            Container(
                                                              height: 30,
                                                              width: 80,
                                                              decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(5),
                                                                  border: Border.all(
                                                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                                                  )),
                                                              child: Center(
                                                                  child: Text(
                                                                chapterData[i]["data"][index]["price"],
                                                                style: TextStyle(
                                                                  fontFamily: "Poppins",
                                                                  fontSize: 16,
                                                                  color: Colors.grey[700],
                                                                ),
                                                              )),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Container(
                                                              height: 30,
                                                              width: 80,
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(5),
                                                                color: kDarkpink,
                                                              ),
                                                              child: Center(
                                                                  child: Text(
                                                                "Get",
                                                                style: TextStyle(
                                                                  fontFamily: "Poppins",
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.white,
                                                                ),
                                                              )),
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 30,
                                                    )
                                                  ],
                                                ),
                                              );
                                            })),
                                  ],
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                )
              ],
            )
          : SizedBox(),
    );
  }

  Container courseContentTile(String img, String label, [int? num, bool? bullet = true]) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          img != ""
              ? Container(
                  height: 15,
                  width: 15,
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ))
              : SizedBox(),
          SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          num != 0 && bullet == true ? Image.asset("images/dot.png") : SizedBox(),
        ],
      ),
    );
  }
}
