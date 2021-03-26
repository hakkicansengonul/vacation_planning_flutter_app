import 'package:flutter/material.dart';
import 'package:vacation_planning_flutter_app/screens/details_screen.dart';

List RecommendedList = [
  Recommended(
      "https://cdn.pixabay.com/photo/2017/01/20/00/30/maldives-1993704__480.jpg",
      "Wison island tour",
      "Maldives, Asia"),
  Recommended(
      "https://cdn.pixabay.com/photo/2017/01/12/06/00/island-1973839__480.jpg",
      "Wison island tour",
      "Bali, Indonesia"),
  Recommended(
      "https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072__480.jpg",
      "Wison island tour",
      "Maldives, Asia"),
  Recommended(
      "https://cdn.pixabay.com/photo/2016/02/19/11/36/canal-1209808__480.jpg",
      "Wison island tour",
      "Rome, Italy"),
];

class Recommended extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String location;

  const Recommended(this.imgUrl, this.name, this.location);
  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => DetailsPage(
                          imgUrl: widget.imgUrl,
                          location: widget.location,
                        )));
          },
          child: Container(
            height: 350.0,
            width: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Container(
                  height: 250.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(widget.imgUrl), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.yellow,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green,
                                ),
                                Text(widget.location),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.green,
                                ),
                                Text("4.9"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
