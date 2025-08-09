
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  final IconData icon;
  const ArrowButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 37,
      height: 37,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.transparent,
          border: BoxBorder.all(color: Theme.of(context).primaryColor)
      ),
      child: Icon(icon, color:Theme.of(context).primaryColor,),
    );
  }
}
