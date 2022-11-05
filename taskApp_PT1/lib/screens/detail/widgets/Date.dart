import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Date extends StatefulWidget {

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: Text("Calendar"),
      centerTitle: true,
    ),
    body: TableCalendar(
     focusedDay: DateTime.now(),
     firstDay: DateTime(1990),
     lastDay: DateTime(2060),
     calendarFormat: format,
    onFormatChanged: (CalendarFormat _format){
      setState((){
        format = _format;
      });
    },   
    ),
   );
  }
  Widget buildC(BuildContext context){
    final weeklist = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'];
    final dayList = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
    final x = selectedDay.weekday;
    final y = selectedDay.day;
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
       child: ListView.separated(
         scrollDirection: Axis.horizontal,
         itemBuilder: (context, index) => 
           GestureDetector(
             onTap: () => setState(() => selectedDay = focusedDay),
             child: Container(
             padding: EdgeInsets.all(10),
             margin: EdgeInsets.symmetric(horizontal: 4),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: selectedDay == focusedDay ? Colors.grey.withOpacity(0.1) : null
              ),
            child: Column(
              children: [
                Text(weeklist[x],
                style: TextStyle(
                  color: selectedDay == focusedDay ? Colors.black : Colors.grey
                ),),
                SizedBox(height:5),
                Text(dayList[y],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: selectedDay == focusedDay? Colors.black : Colors.grey 
                ),)
              ],
            ),
          ),
        ),
        separatorBuilder: (_ ,y) => SizedBox(width:5),
        itemCount: weeklist.length
      ),
    );
  }
}