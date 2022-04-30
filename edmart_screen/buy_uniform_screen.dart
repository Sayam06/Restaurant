import 'package:educircle/app/edmart_screen/uniform_order_address_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class BuyUniformScreen extends StatefulWidget {
  static const routeName = "/buy-uniform";

  @override
  State<BuyUniformScreen> createState() => _BuyUniformScreenState();
}

class _BuyUniformScreenState extends State<BuyUniformScreen> {
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
  int _curr = 0;
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    Image.asset(
      "images/dress.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "images/dress.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "images/dress.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "images/dress.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "images/dress.png",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "images/dress.png",
      fit: BoxFit.cover,
    ),
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

                    // Spacer(),
                    Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("images/search_black.png"),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                                height: 23,
                                width: 23,
                                child: Image.asset(
                                  "images/add to cart.png",
                                  fit: BoxFit.cover,
                                )),
                            SizedBox(
                              width: 10,
                            )
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
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    width: widget.maxWidth,
                    height: 400,
                    child: Stack(
                      children: [
                        PageView(
                          children: _list,
                          scrollDirection: Axis.horizontal,

                          // reverse: true,
                          // physics: BouncingScrollPhysics(),
                          controller: controller,
                          onPageChanged: (num) {
                            setState(() {
                              _curr = num;
                            });
                          },
                        ),
                        Positioned(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 20, top: 20),
                              child: Column(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset(
                                          "images/heart_grey.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        child: Image.asset(
                                          "images/shareDress.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 10,
                    width: widget.maxWidth,
                    color: Colors.white,
                  ),
                  Container(
                      width: widget.maxWidth,
                      color: Colors.white,
                      height: 10,
                      child: Center(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (ctx, i) {
                            if (i == _curr) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Color.fromRGBO(130, 130, 130, 1),
                                ),
                              );
                            } else {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(360),
                                  color: Color.fromRGBO(224, 224, 224, 1),
                                ),
                              );
                            }
                          },
                          itemCount: _list.length,
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                        ),
                      )),
                  Container(
                    height: 10,
                    width: widget.maxWidth,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white,
                    width: widget.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Morbi dictum congue tortor diam odio fringilla tortor viverra.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Brand: ",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "dfdfddvb",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: kDarkpink,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "4.2",
                                      style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "23415 ratings",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "M.R.P: ",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Rs 1299.00",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Special price: ",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Rs 499.00 (60% off)",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: kDarkpink,
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Ends in 15h 23m 52s",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: widget.maxWidth,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            featuresTile("Cash on Delivery"),
                            featuresTile("7 days replacement"),
                            featuresTile("1 year warranty"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widget.maxWidth,
                    height: 50,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("images/free delivery.png"),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Free delivery",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Rs. 40",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Container(
                            height: 20,
                            child: VerticalDivider(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            "Tuesday, March 15",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: kDarkpink2,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: widget.maxWidth,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Offers and coupons",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        offerTile("Varius nec cum adipiscing ultricies faucibus sem tincidunt felis, malesuada."),
                        SizedBox(
                          height: 10,
                        ),
                        offerTile("Varius nec cum adipiscing ultricies faucibus sem tincidunt felis, malesuada."),
                        SizedBox(
                          height: 10,
                        ),
                        offerTile("Varius nec cum adipiscing ultricies faucibus sem tincidunt felis, malesuada."),
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
                    width: widget.maxWidth,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "All offers and coupons",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                            ),
                          ),
                        ),
                        // Expanded(
                        //   child: Container(),
                        // ),
                        Container(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: kDarkpink2,
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
                    height: 30,
                    color: Colors.white,
                  )
                ],
              ),
            )),
            Container(
              height: 50,
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-1, -1),
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ],
                        color: Colors.white,
                      ),
                      height: double.maxFinite,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(UniformOrderAddressScreen.routeName),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(-1, -1),
                              blurRadius: 4,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            )
                          ],
                          color: kDarkpink,
                        ),
                        height: double.maxFinite,
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            "Buy now",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row offerTile(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 15),
          // color: Colors.black,
          child: Image.asset("images/offer.png"),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 25),
          child: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: kDarkpink2,
          ),
        )
      ],
    );
  }

  Container featuresTile(String text) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 120,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
