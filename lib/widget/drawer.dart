import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF002639),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 2),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("images/e2open_logo.png",
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Orm Chanvuthy",style: TextStyle(color: Colors.white,fontSize: 15),),
                          Text("ID: 120938",style: TextStyle(color: Colors.white,fontSize: 12),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(

                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.white.withOpacity(0.4),
              ),
              MenuItem(icon: Icons.account_balance_wallet_outlined, title: "Scheduled Payment"),
              MenuItem(icon: Icons.location_on_sharp, title: "ABA PAY Places"),
              MenuItem(icon: Icons.monetization_on_sharp, title: "Exchange Rates"),
              MenuItem(icon: Icons.phone_in_talk_rounded, title: "Contact Us"),
              MenuItem(icon: Icons.paste_rounded, title: "Terms & Conditions"),
              MenuItem(icon: Icons.settings_outlined, title: "Setting"),
              Spacer(),
              Container(

                width: MediaQuery.of(context).size.width,
                height: 1,
                color: Colors.white.withOpacity(0.4),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("V3.4.6.597",style: TextStyle(color: Colors.white,fontSize: 12),),
                    Text("Last Login: 11:03 | 04 Jun 21",style: TextStyle(color: Colors.white,fontSize: 12),)
                  ],
                ),
              )
            ],
          ),
        ),


      ),
    );
  }

}
class MenuItem extends StatelessWidget {

  final IconData icon;
  final String title;

  const MenuItem({Key? key, required this.icon, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
              child: Text(title,style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}


