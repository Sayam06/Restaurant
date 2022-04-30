import 'package:educircle/app/edmart_screen/payment_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class UniformOrderAddressScreen extends StatefulWidget {
  static const routeName = "/uniform-order";
  const UniformOrderAddressScreen({Key? key}) : super(key: key);

  @override
  State<UniformOrderAddressScreen> createState() => _UniformOrderAddressScreenState();
}

class _UniformOrderAddressScreenState extends State<UniformOrderAddressScreen> {
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
  int addressValue = 0;
  List<String> address = [
    "Subhranil Maity\nHouse no: R-33\nBhabanipur\nHaldia, West Bengal: 721657\nIndia\nPh. no.: 1234567890",
    "Aubhranil Maity\nHouse no: R-33\nBhabanipur\nHaldia, West Bengal: 721657\nIndia\nPh. no.: 1234567890",
    "Bubhranil Maity\nHouse no: R-33\nBhabanipur\nHaldia, West Bengal: 721657\nIndia\nPh. no.: 1234567890",
    "Cubhranil Maity\nHouse no: R-33\nBhabanipur\nHaldia, West Bengal: 721657\nIndia\nPh. no.: 1234567890",
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
              color: klightpink,
            ),
            Container(
              color: klightpink,
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
              height: 10,
              color: klightpink,
            ),
            Container(
              width: widget.maxWidth,
              height: 10,
              color: Colors.white,
            ),
            Container(
              color: Colors.white,
              width: widget.maxWidth,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Select a delivery address",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 244, 244, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Container(
                    height: 40,
                    width: widget.maxWidth,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kDarkpink,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add new address",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: widget.maxWidth,
              height: 10,
              color: Colors.white,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Recently used",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ...address.map((e) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: address.indexWhere((element) => element == e),
                                      groupValue: addressValue, //address.indexWhere((element) => element == e),
                                      activeColor: Color.fromRGBO(177, 35, 10, 1),
                                      onChanged: (val) {
                                        setState(() {
                                          addressValue = val as int;
                                        });
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    e,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                              if (addressValue == address.indexWhere((element) => element == e))
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color.fromRGBO(0, 0, 0, 0.25),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(0, 0, 0, 0.25),
                                              blurRadius: 4,
                                              spreadRadius: 0,
                                              offset: Offset(1, 1),
                                            )
                                          ]),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.edit),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Edit",
                                            style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        );
                      }),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(PaymentScreen.routeName),
              child: Container(
                width: widget.maxWidth,
                height: 50,
                color: kDarkpink,
                child: Center(
                  child: Text(
                    "Deliver to this address",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
