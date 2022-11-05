import 'package:flutter/material.dart';
import 'package:task_app/Taskdef.dart';
import 'package:task_app/models/task.dart';
import '../../constants/colors.dart';

List<Map<String,dynamic>>? des;
late String t0;
List<int> c = [0,1,2];
late final Task task;
final detailList = task.desc;

typedef FormFieldSetter<String> = void Function(
  String? newValue
);


class CreateNewTasks extends StatefulWidget {
  final Taskdef t;
  final state = _CreateNewTasks();

  CreateNewTasks({required this.t});
  @override
  _CreateNewTasks createState() => state;
}
class _CreateNewTasks extends State<CreateNewTasks> {
  final form = GlobalKey<FormState>();

  String? t1;
  String? c1;
  String? s1;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppBar(
                leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(Icons.arrow_back),
                  iconSize: 15,
                ),
                title: Text('New Task '),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    onPressed: () {
                      if(form.currentState!.validate()){
                        form.currentState!.save();
                        print('Valid');
                      }
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.check)
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: widget.t.Tname,
                  onSaved: (val){
                      print('Saved');
                      t1 = val;
                   },
                  validator: (val) {
                      print('Validating');
                   },
                  decoration: InputDecoration(
                    labelText: 'Title Name',
                    hintText: 'Enter name of the Task'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: widget.t.category,
                  onSaved: (val){
                      print('Saved');
                      c1 = val;
                   },
                  validator: (val) => val!.length > 3 ? null : 'Slot is INVALID' ,
                  decoration: InputDecoration(
                    labelText: 'Task Slot',
                    hintText: 'Select Slot (eg: 9:00 - 10:00 am)'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: widget.t.st,
                  onSaved: (val){
                      print('Saved');
                      s1 = val;
                   },
                  validator: (val) => val!.length > 3 ? null : 'Time is INVALID' ,
                  decoration: InputDecoration(
                    labelText: 'Start time',
                    hintText: 'Enter Time (eg: 9:00am)'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }              
  _assignTask(t1,c1,s1) {
     Color tl=kRedDark;
     Color bg=kRedLight;
     _assignColor(tl,bg);
     des: [
         {
          'time':s1,
          'title':t1,
          'slot':c1,
          'tlColor': tl,
          'bgColor': bg
        }
      ];
    }
}

_assignTask(String? t,String? c,String? s) {
  Color tl=kRedDark;
  Color bg=kRedLight;
  _assignColor(tl,bg);
  des: [
        {
          'time':s,
          'title':t,
          'slot':c,
          'tlColor': tl,
          'bgColor': bg
        }
  ];
}

_assignColor(Color tl,Color bg) {
  int i,j;
  for(i=0;i<3;i++){
    j=c[0];
    if(j==0){
      tl=kRedDark;
      bg=kRedLight;
    }
    if(j==1){
      tl=kBlueDark;
      bg=kBlueLight;
    }
    if(j==2){
      tl=kYellowDark;
      bg=kYellowLight;
      c[i]=c[i]-2;
      break;
    }
    c[i]+=1;
  }
}
