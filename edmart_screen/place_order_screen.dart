import 'package:educircle/app/edmart_screen/payment_screen.dart';
import 'package:educircle/app/login_screen/login_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class PlaceOrderScreen extends StatefulWidget {
  static const routeName = "/place-order";

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
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
  Map data = {
    "title": "Complete Course on Organic Chemistry for JEE Main",
    "img": "images/course1.png",
    "price": "Rs. 1999",
    "edcoin": "199900",
    "item price": "2599.00",
    "discount": "600.00",
    "delivery": "0.00",
    "coupon": "Not applied",
  };

  final couponController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      data["title"],
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(data["img"]),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Price: ",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  data["price"],
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Or, ",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ),
                                ),
                                Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                      "images/edcoin.png",
                                      fit: BoxFit.cover,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  data["edcoin"],
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                              height: 40,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                              ),
                              child: TextField(
                                controller: couponController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    isDense: true,
                                    hintText: "Have a coupon code",
                                    hintStyle: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Color.fromRGBO(0, 0, 0, 0.4),
                                    )),
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: maxWidth / 4,
                          height: 40,
                          decoration: BoxDecoration(
                            color: kDarkpink,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text("Apply",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        cost("Item price: ", data["item price"]),
                        SizedBox(
                          height: 5,
                        ),
                        cost("Discount: ", data["discount"]),
                        SizedBox(
                          height: 5,
                        ),
                        cost("Delivery: ", data["delivery"]),
                        SizedBox(
                          height: 5,
                        ),
                        cost("Coupon: ", data["coupon"]),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 100,
                                  child: Divider(
                                    thickness: 1.5,
                                  ),
                                ),
                                Text(
                                  data["price"],
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(PaymentScreen.routeName),
                    child: Container(
                      height: 45,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: kDarkpink,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: Text(
                          "Place order",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row cost(String label, String cost) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
          ),
        ),
        Spacer(),
        Text(
          cost,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
