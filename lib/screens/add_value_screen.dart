import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:recruitmenttask/components/netguru_values.dart';

class AddValueScreen extends StatefulWidget {
  @override
  _AddValueScreenState createState() => _AddValueScreenState();
}

class _AddValueScreenState extends State<AddValueScreen> {
  @override
  Widget build(BuildContext context) {
    String userNewValue;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(60), topLeft: Radius.circular(60)),
          color: Color(0xFF00D563),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Add Your own, custom value:",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextField(
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: "Enter Your value",
                  hintStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 25),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (addText) {
                  userNewValue = addText;
                },
              ),
            ),
            FlatButton(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      )
                    ]),
                width: 90,
                height: 30,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.add_circle_outline_rounded,
                      ),
                    ],
                  ),
                ),
              ),
              onPressed: () {
                Provider.of<NetguruValues>(context, listen: false)
                    .addValue(userNewValue);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
