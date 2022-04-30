import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class OrderSummaryScreen extends StatefulWidget {
  static const routeName = "/order-summary";

  @override
  State<OrderSummaryScreen> createState() => _OrderSummaryScreenState();
}

class _OrderSummaryScreenState extends State<OrderSummaryScreen> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: widget.maxWidth,
        child: Column(
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
              height: 10,
            ),
            Container(
              width: widget.maxWidth,
              child: Text(
                "Order Summary",
                textAlign: TextAlign.center,
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
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: klightpink,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Subhranil Maity\nHouse no: R-33\nBhabanipur\nHaldia, West Bengal: 721657\nIndia\nPh. no.: 1234567890",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: klightpink,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Morbi dictum congue tortor diam odio fringilla tortor viverra.",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    costText("Item price: ", "2599.00"),
                    costText("Discount: ", "600.00"),
                    costText("Delivery: ", "0.00"),
                    costText("Coupon: ", "Not applied"),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 100,
                        child: Divider(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        ),
                      ),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "1999.00",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                        ),
                      ),
                    )
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Container(
                    //     width: 100,
                    //     child: Divider(
                    //       color: Color.fromRGBO(0, 0, 0, 0.25),
                    //     ),
                    //   ),
                    // )

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [],
                    // )
                  ],
                )
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     "Subhranil Maity\nHouse no: R-33\nBhabanipur\nHaldia, West Bengal: 721657\nIndia\nPh. no.: 1234567890",
                // style: TextStyle(
                //   fontFamily: "Poppins",
                //   fontSize: 16,
                // ),
                //   ),
                // ),
                )
          ],
        ),
      ),
    );
  }

  Row costText(String label, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
