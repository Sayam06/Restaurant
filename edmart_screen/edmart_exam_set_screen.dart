import 'package:educircle/app/login_screen/login_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class EdmartExamSetScreen extends StatefulWidget {
  static const routeName = "/exam-set";

  @override
  State<EdmartExamSetScreen> createState() => _EdmartExamSetScreenState();
}

class _EdmartExamSetScreenState extends State<EdmartExamSetScreen> {
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
  List examSetData = [
    {
      "type": "Academic",
      "data": [
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
      ],
    },
    {
      "type": "Professional",
      "data": [
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
      ],
    },
    {
      "type": "Extra Curricular",
      "data": [
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
      ],
    },
    {
      "type": "Internet based",
      "data": [
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
        {
          "tag": ["Computer", "LANG-ENG"],
          "heading": "The fundamentals of HTML",
          "questions": 20,
          "marks": 20,
          "time": 20,
          "price": "Rs 500",
          "type": "Test series"
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        width: maxWidth,
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
                                  "Back",
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
                            "Exam sets",
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
                      height: 42,
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
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  ...examSetData.map((e) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: maxWidth,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: widget.maxWidth,
                            height: 10,
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Text(
                                e["type"],
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              if (e["type"] == "Academic books")
                                Container(
                                  decoration: BoxDecoration(
                                    color: kDarkpink,
                                    borderRadius: BorderRadius.circular(31),
                                  ),
                                  width: 70,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      "Live",
                                      style: TextStyle(fontFamily: "Poppins", color: Colors.white, fontSize: 14),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 200,
                            child: ListView.builder(
                              itemBuilder: (ctx, i) {
                                return bookTile(e, i);
                              },
                              shrinkWrap: true,
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemCount: e["data"].length,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    );
                  })
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  Container bookTile(e, int i) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Row(
                  children: [
                    ...e["data"][i]["tag"].map((index) {
                      return Container(
                        height: 30,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(4.8),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(255, 197, 239, 1),
                                Color.fromRGBO(255, 197, 239, 0),
                              ],
                            )),
                        child: Center(
                          child: Text(
                            index,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                ),
                Spacer(),
                Image.asset("images/heart_outline.png"),
                SizedBox(
                  width: 10,
                ),
                Image.asset("images/share_pink.png"),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              e["data"][i]["heading"],
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                examSubText(i, "Questions"),
                Container(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.grey[700],
                  ),
                ),
                examSubText(i, "Marks"),
                Container(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.grey[700],
                  ),
                ),
                examSubText(i, "Min"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  e["data"][i]["type"],
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                Spacer(),
                Text(
                  e["data"][i]["price"],
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: kDarkpink2,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 35,
            width: double.maxFinite,
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                // color: Colors.pink,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: kDarkpink,
                )),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset("images/libero amet.png"),
                  SizedBox(width: 10),
                  Text(
                    "Libero amet",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: kDarkpink,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Buy",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Text examSubText(int i, String text) {
    return Text(
      '${examSetData[i]["questions"]} $text',
      style: TextStyle(
        fontFamily: "Poppins",
        color: Colors.grey[700],
        fontSize: 13,
      ),
    );
  }
}
