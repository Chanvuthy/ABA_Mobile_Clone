import 'package:flutter/material.dart';
class ButtonHome extends StatelessWidget {
  final IconData icon;
  final String label;
  final double size;

  const ButtonHome({Key? key, required this.icon, required this.label, this.size=40.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF005071),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            this.icon,
            color: Colors.white,
            size: this.size,
          ),
          Text(this.label,style: TextStyle(color: Colors.white,fontSize: 12.0),)
        ],
      ),

    );
  }
}
