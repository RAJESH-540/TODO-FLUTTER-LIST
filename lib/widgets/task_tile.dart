
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked= false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task'),
      trailing: TaskCheckBox(isChecked),
    );
  }
}

class TaskCheckBox extends StatelessWidget{
TaskCheckBox(this.checkboxState);

final bool checkboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue){
        // setState(() {
        //   isChecked=newValue;
        // });
      },
    );
  }
}