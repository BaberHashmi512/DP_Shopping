import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/order_success_screen.dart';
import 'package:shopping_app/Screens/payment_method_screen.dart';
import 'package:shopping_app/Screens/shipping_address_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Order"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Shipping Address",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: MediaQuery.of(context).size.width,
                height: 105,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dear Pro",
                        style: TextStyle(
                          fontSize: 16,
                        ),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ShippingAddress()));
                        },
                            child: Text("Change",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0XFFDB3022)
                            ),)),
                      ],
                    ),
                    Text("3 Newbridge Court",
                    style: TextStyle(
                      fontSize: 16
                    ),),
                    Text("Chino Hills , CA, 97545, United States",
                    style: TextStyle(
                      fontSize: 16,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600
                    ),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentMethodScreen()));
                  },
                      child: Text(
                        "Change",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0XFFDB3022)
                        ),)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2
                        )
                      ]
                    ),
                    child: Image.asset("assets/images/Mastercard-Logo.png"),
                  ),
                  SizedBox(width: 20,),
                  Text("**** **** *** 3947"),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "Delivery Method",
                style: TextStyle(
                    fontSize: 19,
                  fontWeight: FontWeight.w600
                ),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/icon3.png",height: 25),
                        Text("2-7 Days")
                      ],
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 60,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Home Delivery",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo
                        ),),
                        Text("2-7 Days",
                        style: TextStyle(

                        ),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
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
              SizedBox(height: 60,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderSuccessScreen()));
                },
                child: ContainerButtonModel(
                  containerWidth: MediaQuery.of(context).size.width,
                  itext: "Confirm Order",
                  bgColor: Color(0XFFDB3022),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
