import 'package:flutter/material.dart';

import 'package:recruitmenttask/components/values_list.dart';
import 'package:recruitmenttask/constants.dart';

class ValuesScreen extends StatefulWidget {
  @override
  _ValuesScreenState createState() => _ValuesScreenState();
}

class _ValuesScreenState extends State<ValuesScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Netguru Values',
              style: appBarTitleStyle,
            ),
            backgroundColor: Color(0xFF00D563),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              color: Color(0xFF00D563),
              height: 70,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  child: ValuesList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
