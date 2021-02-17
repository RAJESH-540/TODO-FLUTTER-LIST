import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked= false;

  void checkBoxCallback( bool checkBoxState){
    setState(() {
      isChecked=checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough: null),
      ),
      trailing: TaskCheckBox(checkboxState: isChecked,toggleCheckboxState: checkBoxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget{
TaskCheckBox({this.checkboxState,this.toggleCheckboxState});

final bool checkboxState;
final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged:toggleCheckboxState,
    );
  }
}