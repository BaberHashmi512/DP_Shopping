import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/shipping_address_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int _type = 1;

  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Method"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 1
                            ? Border.all(
                                width: 1,
                                color: const Color(0XFFDB3022),
                              )
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0XFFDB3022),
                                ),
                                Text("Amazon Pay",
                                    style: _type == 1
                                        ? const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)
                                        : const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                              ],
                            ),
                            Image.asset(
                              "assets/images/Amazon_Pay.png",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 2
                            ? Border.all(width: 1, color: const Color(0XFFDB3022))
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0XFFDB3022),
                                ),
                                Text(
                                  "Credit Card",
                                  style: _type == 2
                                      ? const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)
                                      : const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                ),
                              ],
                            ),
                            Spacer(),
                            Image.asset(
                              "assets/images/visa.png",
                              width: 35,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              "assets/images/Mastercard-Logo.png",
                              width: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 3
                            ? Border.all(width: 1, color: const Color(0XFFDB3022))
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0XFFDB3022),
                                ),
                                Text(
                                  "Pay Pal",
                                  style: _type == 3
                                      ? const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                      : const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/images/PayPal-Logo.png",
                              height: 75,
                              width: 75,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width,
                    height: 55,
                    // margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        border: _type == 4
                            ? Border.all(width: 1, color: const Color(0XFFDB3022))
                            : Border.all(width: 0.3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Radio(
                                  value: 4,
                                  groupValue: _type,
                                  onChanged: _handleRadio,
                                  activeColor: const Color(0XFFDB3022),
                                ),
                                Text(
                                  "Google Pay",
                                  style: _type == 4
                                      ? const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                      : const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/images/icon2.png",
                              height: 65,
                              width: 65,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub-Total",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                        ),
                      ),
                      Text(
                        "\$300.50",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Fee",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                        "\$15.00",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 30,color: Colors.black,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$315.00",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.redAccent
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 70,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> ShippingAddress()));
                    },
                    child: ContainerButtonModel(
                        containerWidth: size.width,
                        itext: "Confirm Payment",
                      bgColor: Color(0XFFDB3022),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
