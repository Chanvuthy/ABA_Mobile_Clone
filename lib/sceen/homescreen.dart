

import 'package:aba_mobile/widget/button.dart';
import 'package:aba_mobile/widget/drawer.dart';
import 'package:aba_mobile/widget/logo.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar,
      drawer: DrawerPage(),
      body: _buildBody,
    );
  }
  AppBar get _buildAppbar{
    return AppBar(
      title: abalogo,
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none_rounded,size: 28.0,)),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.phone_in_talk_rounded,size: 27.0))
      ],

    );
  }
  
  Widget get _buildBody{
    return Column(
      children: [
        Flexible(
            flex: 3,
            child:Container(
              decoration: BoxDecoration(gradient: RadialGradient(colors:[
                Colors.white,Color(0xFF005071)
              ])),
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                  children: [
                    ButtonHome(icon: Icons.card_membership_rounded, label: "Account"),
                    ButtonHome(icon: Icons.credit_card, label: "Cards"),
                    ButtonHome(icon: Icons.monetization_on_outlined, label: "Payments"),
                    ButtonHome(icon: Icons.open_in_new_rounded, label: "New Account"),
                    ButtonHome(icon: Icons.cast_connected_outlined, label: "Cash to ATM"),
                    ButtonHome(icon: Icons.autorenew_rounded, label: "Transfers"),
                    ButtonHome(icon: Icons.qr_code_outlined, label: "Scan QR"),
                    ButtonHome(icon: Icons.monetization_on_sharp, label: "Loans"),
                    ButtonHome(icon: Icons.location_on_sharp, label: "Locator")
                  ],
              ),
            )),
        Flexible(
            flex: 1,
            child:Container(
              padding: const EdgeInsets.only(left: 20.0),
              width: double.infinity,
              color: Color(0xFF00BCD5),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Quick Transfer",style: TextStyle(color: Colors.white,fontSize: 18.0)),
                    SizedBox(height: 10.0),
                    Text("Create your templates here to make transfer \nquicker",style: TextStyle(color: Colors.white))
                  ],),
                  Positioned(
                    right: -40,
                    bottom: -40,
                    child: Icon(
                      Icons.stop_circle_rounded,
                      color: Colors.white.withOpacity(0.6),
                      size: 140.0,
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -10,
                    child: Icon(
                      Icons.autorenew_rounded,
                      color: Colors.white.withOpacity(0.6),
                      size: 80.0,
                    ),
                  )
                ],

              ),
            )),
        Flexible(
            flex: 1,
            child:Container(
              padding: const EdgeInsets.only(left: 20.0),
              width: double.infinity,
                color: Color(0xFFEE534F),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Quick Payment",style: TextStyle(color: Colors.white,fontSize: 18.0)),
                      SizedBox(height: 10.0),
                      Text("Paying your bills with templates is faster",style: TextStyle(color: Colors.white))
                    ],),
                  Positioned(
                    right: -40,
                    bottom: -40,
                    child: Icon(
                      Icons.circle,
                      color: Colors.white.withOpacity(0.6),
                      size: 140.0,
                    ),
                  ),
                  Positioned(
                    right: -10,
                    bottom: -10,
                    child: Icon(
                      Icons.attach_money,
                      color: Colors.white.withOpacity(0.6),
                      size: 80.0,
                    ),
                  )
                ],

              ),
            ))
      ],
    );
  }
}
