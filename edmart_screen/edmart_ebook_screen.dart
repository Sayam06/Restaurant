import 'package:educircle/app/login_screen/login_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class EdmartEbookScreen extends StatefulWidget {
  static const routeName = "/ebook";

  @override
  State<EdmartEbookScreen> createState() => _EdmartEbookScreenState();
}

class _EdmartEbookScreenState extends State<EdmartEbookScreen> {
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
  List data = [
    {
      "type": "Academic books",
      "data": [
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
      ],
    },
    {
      "type": "Professional books",
      "data": [
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
      ],
    },
    {
      "type": "Extra-curricular",
      "data": [
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
      ],
    },
    {
      "type": "Story & Novel",
      "data": [
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
      ],
    },
    {
      "type": "Interest based",
      "data": [
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
                            "EBook",
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
            Container(
              height: 10,
              width: maxWidth,
              color: Colors.white,
            ),
            Container(
              height: 10,
              width: maxWidth,
              color: Colors.white,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  ...data.map((e) {
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
                          Text(
                            e["type"],
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
                            height: 250,
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
                e["data"][i]["img"],
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
                    e["data"][i]["cost"],
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    height: 60,
                    child: SingleChildScrollView(
                      child: Text(
                        e["data"][i]["name"],
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
}
