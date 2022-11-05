import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class DatePicker extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weeklist = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'];
  final dayList = ['24','25','26','27','28','29','30'];

  var selected = 4 ;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 110,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
         child: ListView.separated(
           scrollDirection: Axis.horizontal,
           itemBuilder: (context, index) => 
           GestureDetector(
            onTap: () => setState(() => selected = index),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected == index ? Colors.grey.withOpacity(0.1) : null
              ),
              child: Column(
                children: [
                  Text(weeklist[index],
                  style: TextStyle(
                    color: selected == index ? Colors.black : Colors.grey
                  ),),
                  SizedBox(height:5),
                  Text(dayList[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: selected == index ? Colors.black : Colors.grey 
                  ),)
                ],
              ),
            ),
          ),
          separatorBuilder: (_ ,index) => const SizedBox(width:5),
          itemCount: weeklist.length
        ),
      ),
    );
  }
}