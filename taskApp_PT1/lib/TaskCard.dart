import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class taskCard extends StatelessWidget {
  const taskCard({
    Key? key,
    required Color this.bgColor,
    required Color this.iconColor,
    required Color this.btnColor,    
  }) : super(key: key);
  final Color bgColor;
  final Color iconColor;
  final Color btnColor;  
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
    );
  }
}
