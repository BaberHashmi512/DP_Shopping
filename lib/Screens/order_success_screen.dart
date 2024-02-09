import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/navigation_screen.dart';
import 'package:shopping_app/widgets/container_button_modal.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset("assets/images/success-icon.png",height: 250,),
              SizedBox(height: 10,),
              Text("Success!",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 40,
                letterSpacing: 1
              ),),
              SizedBox(height: 20,),
              Text("Your Order will be delivered soon",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                ),),
              Text("Thank You! for choosing our app",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),)
            ],
          ),
          SizedBox(height: 30,),
          Padding(padding: EdgeInsets.all(20),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> NavigationScreen()));
            },
            child: ContainerButtonModel(
                containerWidth: MediaQuery.of(context).size.width,
                itext: "Continue Shopping",
              bgColor: Color(0XFFDB3022),
            ),
          ),),
        ],
      ),
    );
  }
}
