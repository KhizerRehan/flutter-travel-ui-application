import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../models/destination_model.dart';

class DestinationHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                'Top Destinations',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () {
                  print('see all');
                },
                child: new Text(
                  'See all',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              )
            ],
          ),
        ),
        Container(
            height: 300.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                Destination destination = destinations[index];
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: EdgeInsets.all(12.5),
                    width: 200.0,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 2.0,
                          child: Container(
                            height: 150,
                            width: 220.0,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '${destination.activities.length} activities',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 1.2),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10.0,
                                    ),
                                    child: Text(
                                      destination.description,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 170.0,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 15.0),
                                blurRadius: 6.0,
                              )
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage(destination.imageUrl),
                                  height: 170,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 10.0,
                                bottom: 20.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      destination.city,
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          FontAwesomeIcons.locationArrow,
                                          size: 10.0,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          destination.country,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ));
              },
            ))
      ],
    );
  }
}
