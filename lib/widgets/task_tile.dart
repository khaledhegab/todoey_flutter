import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState){
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a task.',
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : TextDecoration.none
        ),
      ),

    );
  }
}

class taskCheckBox extends StatelessWidget {

  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  taskCheckBox(this.checkBoxState, this.toggleCheckBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
      activeColor: Colors.lightBlueAccent,
    );
  }
}