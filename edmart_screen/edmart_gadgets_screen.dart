import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class EdmartGadgetsScreen extends StatefulWidget {
  static const routeName = "/gadgets";

  @override
  State<EdmartGadgetsScreen> createState() => _EdmartGadgetsScreenState();
}

class _EdmartGadgetsScreenState extends State<EdmartGadgetsScreen> {
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
      "name": "6000s Series: Best in Class",
      "cost": "Rs XX,999.00",
      "img": "images/headphones.png",
    },
    {
      "name": "6000s Series: Best in Class",
      "cost": "Rs XX,999.00",
      "img": "images/headphones.png",
    },
    {
      "name": "6000s Series: Best in Class",
      "cost": "Rs XX,999.00",
      "img": "images/headphones.png",
    },
  ];
  String isSelected = "smart class";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                            "Gadgets",
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
              height: 20,
              width: widget.maxWidth,
              color: Colors.white,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              width: widget.maxWidth,
              color: Colors.white,
              child: Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isSelected = "smart class";
                      }),
                      child: Container(
                        width: widget.maxWidth,
                        height: 35,
                        decoration: BoxDecoration(
                            color: isSelected == "smart class" ? kDarkpink : Colors.white,
                            borderRadius: isSelected != "spare parts"
                                ? BorderRadius.circular(5)
                                : BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                            border: isSelected != "smart class"
                                ? Border.all(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                  )
                                : null),
                        child: Center(
                          child: Text(
                            "Smartclass",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: isSelected == "smart class" ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isSelected = "spare parts";
                      }),
                      child: Container(
                        width: widget.maxWidth,
                        height: 35,
                        decoration: BoxDecoration(
                            color: isSelected == "smart class" ? Colors.white : kDarkpink,
                            borderRadius: isSelected == "spare parts"
                                ? BorderRadius.circular(5)
                                : BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                            border: Border.all(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            )),
                        child: Center(
                          child: Text(
                            "Spare parts",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: isSelected == "smart class" ? Colors.black : Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                isSelected == "smart class" ? "Smartclass" : "Spare parts",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // childAspectRatio: 1.2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (ctx, i) {
                    return Container(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 145,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                data[i]["img"],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              data[i]["name"],
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(data[i]["cost"]),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: data.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
