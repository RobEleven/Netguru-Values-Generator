import 'package:flutter/material.dart';

import 'package:recruitmenttask/constants.dart';

class TaskTile extends StatelessWidget {
  final String valueName;

  TaskTile({this.valueName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF00D563), width: 3),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: Center(
          child: ListTile(
            leading: Icon(Icons.star),
            title: Text(
              "$valueName",
              style: listViewValue,
            ),
          ),
        ),
      ),
    );
  }
}
