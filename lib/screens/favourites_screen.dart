import 'package:flutter/material.dart';

import 'package:recruitmenttask/constants.dart';

class FavouritesScreen extends StatefulWidget {
  final List<String> favouriteValues;
  final String favouriteValue;

  FavouritesScreen(this.favouriteValues, this.favouriteValue);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  List<String> favouriteValues = [];
  String favouriteValue;

  @override
  void initState() {
    super.initState();
    favouriteValues = widget.favouriteValues;
    favouriteValue = widget.favouriteValue;
    favouriteValues.add(favouriteValue);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Favourites:',
              style: appBarTitleStyle,
            ),
            backgroundColor: Color(0xFF00D563),
          ),
          body: ListView.builder(
            itemCount: favouriteValues.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF00D563), width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text(
                        "${favouriteValues[index]}",
                        style: listViewValue,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              color: Color(0xFF00D563),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
