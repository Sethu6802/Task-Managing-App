import 'package:flutter/material.dart';
import 'package:task_app/TaskCard.dart';
import '../lib/constants/colors.dart';

class CreateTasks extends StatefulWidget {
  const CreateTasks({Key? key}) : super(key: key);

  @override
  State<CreateTasks> createState() => _CreateTasks();
}


class _CreateTasks extends State<CreateTasks>{
  late String uC;
  late String title;
  late Color bgC;
  late Color iC;
  late Color btnC;
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Card(
          child: Form(
            key: form,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   TextFormField(
                     decoration: InputDecoration(
                     hintText: 'Select a color: Red/Blue/Yellow ',
                     labelText: 'Enter Task Title ',
                     border: OutlineInputBorder(),
                     suffixIcon: IconButton(
                          onPressed: () {
                              _textController.clear();
                              _textController2.clear();
                            },
                          icon: Icon(Icons.clear),
                        ),
                      ),
                    ),
                   MaterialButton(
                      onPressed: () {
                      uC = _textController.text;
                      title = _textController2.text;
                      assignColor(uC);
                      taskCard(bgColor: bgC,iconColor: iC,btnColor: btnC);
                      },
                    )
                ],
            ),
          ),
        ),
      ),
    );
  }

  assignColor(String uC){
    if(uC=='Red' || uC=='red') {
      bgC = kRedLight;
      iC = kRed;
      btnC = kRedDark;
    }
    if(uC=='Blue' || uC=='blue') {
      bgC = kBlueLight;
      iC = kBlue;
      btnC = kBlueDark;
    }
    if(uC=='Yellow' || uC=='yellow') {
      bgC = kYellowLight;
      iC = kYellow;
      btnC = kYellowDark;
    }
  }
}