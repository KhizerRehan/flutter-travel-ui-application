import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/Constants.dart';
import 'package:flutter_travel_ui_starter/widgets/destination-section/desitnation_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIconIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIconIndex = index;
        });
        print('Selected Icon Index is:$selectedIconIndex');
      },
      child: Container(
        height: 65.0,
        width: 65.0,
        decoration: BoxDecoration(
          color: selectedIconIndex == index
              ? Theme.of(context).accentColor
              : Color(Constants.selectedAccentColor),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index],
            size: 28.0,
            color: selectedIconIndex == index
                ? Theme.of(context).primaryColor
                : Color(Constants.selectedIconColor)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 140.0,
              ),
              child: Text(
                'What would you like to find?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  letterSpacing: 1.0,
                  height: 1.3,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList()),
            SizedBox(height: 20.0,),
            Column(
              children: <Widget>[
                DestinationHeader()
              ],
            )
          ],
        ),
      ),
    );
  }
}
