import 'package:educircle/app/edmart_screen/edmart_audiobook_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_books_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_courses_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_ebook_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_equipment_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_exam_set_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_gadgets_screen.dart';
import 'package:educircle/app/edmart_screen/edmart_uniform_screen.dart';
import 'package:educircle/app/login_screen/login_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class EdmartScreen extends StatefulWidget {
  static const routeName = "/edmart-screen";

  @override
  State<EdmartScreen> createState() => _EdmartScreenState();
}

class _EdmartScreenState extends State<EdmartScreen> {
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

  List filterData = [
    {
      "name": "Courses",
      "img": "images/courses.png",
    },
    {
      "name": "Books",
      "img": "images/books.png",
    },
    {
      "name": "Ebooks",
      "img": "images/ebooks.png",
    },
    {
      "name": "Audiobooks",
      "img": "images/audiobooks.png",
    },
    {
      "name": "Exam sets",
      "img": "images/examsets.png",
    },
    {
      "name": "Equipments",
      "img": "images/equipments.png",
    },
    {
      "name": "Uniform",
      "img": "images/uniform.png",
    },
    {
      "name": "Gadgets",
      "img": "images/gadgets.png",
    },
  ];
  List audioBookData = [
    {
      "name": "Harry Potter and the half blood prince",
      "cost": "Rs. 199",
      "img": "images/harry potter.png",
      "type": "book",
    },
    {
      "name": "Wings of Fire",
      "cost": "Rs. 159",
      "img": "images/wings of fire.png",
      "type": "book",
    },
    {
      "name": "Atomic Habits",
      "cost": "Rs. 119",
      "img": "images/atomic habits.png",
      "type": "book",
    },
    {
      "name": "Harry Potter and the half blood prince",
      "cost": "Rs. 199",
      "img": "images/harry potter.png",
      "type": "book",
    },
  ];
  List examSetData = [
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
  ];
  List gadgetsData = [
    {
      "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
      "cost": "Rs. 29,999.00",
      "img": "images/headphones.png",
      "type": "market",
      "rating": "4.5",
    },
    {
      "name": "HP Chromebook 14 Intel Celeron N4020-4GB SDRAM/64GB eMMC + ",
      "cost": "Rs. 51,999.00",
      "img": "images/laptop.png",
      "type": "market",
      "rating": "3",
    },
    {
      "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
      "cost": "Rs. 29,999.00",
      "img": "images/headphones.png",
      "type": "market",
      "rating": "3.5",
    },
  ];
  List recommendationData = [
    {
      "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
      "cost": "Rs. 29,999.00",
      "img": "images/headphones.png",
      "type": "market",
      "rating": "4.5",
    },
    {
      "name": "Atomic Habits",
      "cost": "Rs. 119",
      "img": "images/atomic habits.png",
      "type": "book",
    },
    {
      "name": "Harry Potter and the half blood prince",
      "cost": "Rs. 199",
      "img": "images/harry potter.png",
      "type": "book",
    },
    {
      "name": "HP Chromebook 14 Intel Celeron N4020-4GB SDRAM/64GB eMMC + ",
      "cost": "Rs. 51,999.00",
      "img": "images/laptop.png",
      "type": "market",
      "rating": "3.5",
    },
    {
      "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
      "cost": "Rs. 29,999.00",
      "img": "images/headphones.png",
      "type": "market",
      "rating": "2",
    },
    {
      "name": "Wings of Fire",
      "cost": "Rs. 159",
      "img": "images/wings of fire.png",
      "type": "book",
    },
    {
      "name": "Harry Potter and the half blood prince",
      "cost": "Rs. 199",
      "img": "images/harry potter.png",
      "type": "book",
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widget.maxWidth / 30,
                  ),
                  Container(
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
                        "Filter",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              width: widget.maxWidth,
              height: 20,
              color: Colors.white,
            ),
            Container(
              width: widget.maxWidth,
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(2),
                width: widget.maxWidth / 1.1,
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
            Container(
              height: 5,
              width: widget.maxWidth,
              color: Colors.white,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Center(
                              child: Wrap(
                                children: [
                                  ...filterData.map((e) {
                                    return GestureDetector(
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                        child: Column(
                                          children: [
                                            Container(
                                                width: maxWidth / 4.5,
                                                child: Image.asset(
                                                  e["img"],
                                                  fit: BoxFit.fitWidth,
                                                )),
                                            Text(
                                              e["name"],
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        if (e["name"] == "Courses") {
                                          Navigator.of(context).pushNamed(EdmartCoursesScreen.routeName);
                                        } else if (e["name"] == "Books") {
                                          Navigator.of(context).pushNamed(EdmartBooksScreen.routeName);
                                        } else if (e["name"] == "Audiobooks") {
                                          Navigator.of(context).pushNamed(EdmartAudiobookScreen.routeName);
                                        } else if (e["name"] == "Ebooks") {
                                          Navigator.of(context).pushNamed(EdmartEbookScreen.routeName);
                                        } else if (e["name"] == "Exam sets") {
                                          Navigator.of(context).pushNamed(EdmartExamSetScreen.routeName);
                                        } else if (e["name"] == "Equipments") {
                                          Navigator.of(context).pushNamed(EdmartEquipmentScreen.routeName);
                                        } else if (e["name"] == "Uniform") {
                                          Navigator.of(context).pushNamed(EdmartUniformScreen.routeName);
                                        } else if (e["name"] == "Gadgets") {
                                          Navigator.of(context).pushNamed(EdmartGadgetsScreen.routeName);
                                        }
                                      },
                                    );
                                  })
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: widget.maxWidth,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Audiobooks you should listen",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 250,
                            child: ListView.builder(
                              shrinkWrap: true,
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, i) {
                                return bookTile(i, audioBookData[i]["img"], audioBookData[i]["cost"], audioBookData[i]["name"]);
                              },
                              itemCount: audioBookData.length,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      width: widget.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Exam sets for you",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 200,
                            child: ListView.builder(
                              shrinkWrap: true,
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, i) {
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
                                                ...examSetData[i]["tag"].map((index) {
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
                                          examSetData[i]["heading"],
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
                                              examSetData[i]["type"],
                                              style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 16,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              examSetData[i]["price"],
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
                              },
                              itemCount: examSetData.length,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.white,
                      width: widget.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Books for you",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 250,
                            child: ListView.builder(
                              shrinkWrap: true,
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, i) {
                                return bookTile(i, audioBookData[i]["img"], audioBookData[i]["cost"], audioBookData[i]["name"]);
                              },
                              itemCount: audioBookData.length,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.white,
                      width: widget.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Best of gadgets",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 250,
                            child: ListView.builder(
                              shrinkWrap: true,
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, i) {
                                return productTile(i, gadgetsData[i]["img"], gadgetsData[i]["cost"], gadgetsData[i]["name"], gadgetsData[i]["rating"]);
                              },
                              itemCount: gadgetsData.length,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.white,
                      width: widget.maxWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text(
                              "Internet based",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 250,
                            child: ListView.builder(
                              shrinkWrap: true,
                              clipBehavior: Clip.none,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, i) {
                                if (recommendationData[i]["type"] == "market")
                                  return productTile(i, recommendationData[i]["img"], recommendationData[i]["cost"], recommendationData[i]["name"], recommendationData[i]["rating"]);
                                else
                                  return bookTile(i, recommendationData[i]["img"], recommendationData[i]["cost"], recommendationData[i]["name"]);
                              },
                              itemCount: recommendationData.length,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container productTile(int i, String img, String cost, String name, String rating) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Container(
                width: 200,
                height: 150,
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        cost,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    child: SingleChildScrollView(
                      child: Text(
                        name,
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container bookTile(int i, String img, String cost, String name) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 120,
              child: Image.asset(
                img,
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cost,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    height: 60,
                    child: SingleChildScrollView(
                      child: Text(
                        name,
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
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
