import 'package:educircle/app/edmart_screen/order_summary_screen.dart';
import 'package:educircle/app/theme.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = "/payment";

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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

enum Payment { no, cash, token, educoin, upi, wallet, card, netBanking, emi, cod }

class _BodyState extends State<Body> {
  Payment _val = Payment.no;
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
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Complete payment",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Wallet",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        )),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        bulletWidget("Cash: ", "wallet", Payment.cash, "2000"),
                        bulletWidget("Token: ", "wallet", Payment.token, "3"),
                        bulletWidget("Educoin: ", "wallet", Payment.educoin, "234500"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "All other options",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                        )),
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        bulletWidget("UPI", "", Payment.upi),
                        bulletWidget("Wallets", "", Payment.wallet),
                        bulletWidget("Credit/debit/ATM card", "", Payment.card),
                        bulletWidget("Net banking", "", Payment.netBanking),
                        bulletWidget("EMI", "", Payment.emi),
                        bulletWidget("Cash on delivery", "", Payment.cod),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
          Container(
            width: double.maxFinite,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 10),
              child: Row(
                children: [
                  Text(
                    "Rs. 1999",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(OrderSummaryScreen.routeName),
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: kDarkpink,
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontFamily: "Poppins",
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
          )
        ],
      ),
    );
  }

  Row bulletWidget(String label, String type, var typeRadio, [String? amount]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Theme(
          data: ThemeData(
            unselectedWidgetColor: Color.fromRGBO(177, 35, 10, 1),
          ),
          child: Radio<Payment>(
            value: typeRadio,
            groupValue: _val,
            activeColor: Color.fromRGBO(177, 35, 10, 1),
            onChanged: (value) {
              setState(() {
                _val = value as Payment;
              });
            },
          ),
        ),
        SizedBox(
          width: 10,
        ),
        label == "Educoin: " ? Image.asset("images/edcoin.png") : SizedBox(),
        label == "Educoin: "
            ? SizedBox(
                width: 10,
              )
            : SizedBox(),
        type == "wallet"
            ? Text(
                label + amount.toString(),
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Text(
                label,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ],
    );
  }
}
