import 'package:educircle/app/edmart_screen/buy_uniform_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class EdmartUniformScreen extends StatefulWidget {
  static const routeName = "/uniform";

  @override
  State<EdmartUniformScreen> createState() => _EdmartUniformScreenState();
}

class _EdmartUniformScreenState extends State<EdmartUniformScreen> {
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
      "type": "Institution",
      "data": [
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
      ]
    },
    {
      "type": "Lab",
      "data": [
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
      ],
    },
    {
      "type": "Sport",
      "data": [
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
      ]
    },
    {
      "type": "Dance / Play",
      "data": [
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
      ]
    },
    {
      "type": "Interest Based",
      "data": [
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
        {
          "cost": "Rs. 299",
          "name": "Sony WH-1000XM4 Industry Leading Wireless Noise Can......Read more",
          "img": "images/headphones.png",
        },
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        width: widget.maxWidth,
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
                            "Uniform",
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
                  ...data.map((e) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 5),
                      width: widget.maxWidth,
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
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 320,
                            child: ListView.builder(
                              itemBuilder: (ctx, i) {
                                return uniformTile(context, e, i);
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

  GestureDetector uniformTile(BuildContext context, e, int i) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(BuyUniformScreen.routeName);
      },
      child: Container(
        // height: 200,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),

        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  e["data"][i]["img"],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      e["data"][i]["cost"],
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                      ),
                    )),
                SizedBox(
                  width: 60,
                ),
                Expanded(
                  child: Container(
                      height: 20,
                      child: ListView.builder(
                        itemBuilder: (ctx, index) {
                          return index != 4
                              ? Container(
                                  child: Image.asset(
                                    "images/full star.png",
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  child: Image.asset(
                                    "images/half star.png",
                                    fit: BoxFit.cover,
                                  ),
                                );
                        },
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      e["data"][i]["name"],
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
