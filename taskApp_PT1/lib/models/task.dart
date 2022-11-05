import 'package:flutter/material.dart';
import 'package:task_app/constants/colors.dart';
import 'package:task_app/screens/home/CreateNewTasks.dart';


int i=1;
late final CreateNewTasks cnt;

class Task{
  dynamic iconData;
  dynamic title;
  dynamic tlColor;
  dynamic bgColor;
  dynamic iconColor;
  dynamic btnColor;
  dynamic left;
  dynamic done;
  CreateNewTasks? createNewTasks;
  List<Map<String,dynamic>>? desc;
  bool isLast;
  
  Task(
    {
    this.iconData,
    this.title=' ',
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
    this.desc,
    this.createNewTasks,
    this.isLast = false
    }
  );
  static List<Task> generateTasks(){
    final detailList = des;
    return [
      Task(
      iconData: Icons.person_rounded,
      title: 'Personal',
      bgColor: kYellowLight,
      iconColor: kYellowDark,
      btnColor: kYellow,
      left: 3,
      done: 1,
      desc: [
        {
          'time':'9:00 am',
          'title':'Go for a walk with dog',
          'slot':'9:00 - 10:00 am',
          'tlColor': kRedDark,
          'bgColor': kRedLight
        },
        {
          'time':'10:00 am',
          'title':'Buy Groceries',
          'slot':'10:00 am - 12:00 pm',
          'tlColor': kBlueDark,
          'bgColor': kBlueLight
        },
        {
          'time':'11:00 am',
          'title':'',
          'slot':'',
          'tlColor': kBlueDark,
        },
        {
          'time':'12:00 pm',
          'title':'',
          'slot':'',
          'tlColor': Colors.grey.withOpacity(0.3),
        },
        {
          'time':'1:00 pm',
          'title':'',
          'slot':'',
          'tlColor': Colors.grey.withOpacity(0.3),
        },
        {
          'time':'2:00 pm',
          'title':'Call With Client',
          'slot':'2:00 pm - 4:00 pm',
          'tlColor': kYellowDark,
          'bgColor': kYellowLight
        },
        {
          'time':'3:00 pm',
          'title':'',
          'slot':'',
          'tlColor': kYellowDark,
        },
        {
          'time':'4:00 pm',
          'title':'',
          'slot':'',
          'tlColor': kYellowDark,
        },
        {
          'time':'5:00 pm',
          'title':'',
          'slot':'',
          'tlColor': Colors.grey.withOpacity(0.3),
        },
      ]
      ),
      Task(
      iconData: Icons.cases_rounded,
      title: 'Work',
      bgColor: kRedLight,
      iconColor: kRedDark,
      btnColor: kRed,
      left: 0,
      done: 0,
      ),
      Task(
      iconData: Icons.favorite_rounded,
      title: 'Health',
      bgColor: kBlueLight,
      iconColor: kBlueDark,
      btnColor: kBlue,
      left: 0,
      done: 0,
      ),
      Task(isLast: true)
    ];
  }
}