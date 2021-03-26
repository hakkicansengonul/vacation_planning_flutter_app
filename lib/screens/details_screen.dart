import 'package:flutter/material.dart';
import 'package:vacation_planning_flutter_app/Animation/Fade_Animation.dart';

class DetailsPage extends StatefulWidget {
  final String imgUrl;
  final String location;

  const DetailsPage({this.imgUrl, this.location});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500.0,
            width: double.infinity,
            color: Colors.white,
            child: FadeAnimation(
              1.0,
              Stack(
                children: [
                  Positioned(
                    top: 0.0,
                    child: Container(
                      height: 440.0,
                      width: 415.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.imgUrl),
                              fit: BoxFit.cover),
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                          )),
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: 270.0, left: 20.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10.0,
                      left: 32.0,
                      child: Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.4),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 20.0, right: 20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Wilson island tour",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.0),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text("4.9(260 Rewiew)"),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.airplanemode_active_outlined,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "\$499.00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        widget.location,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          FadeAnimation(
            1.0,
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Details",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FadeAnimation(
            1.0,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                  height: 120.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.only(bottom: 10.0),
                    children: [
                      Text(
                        "Island is the name given to a piece of land surrounded by water. The whole of the islands on earth occupy an area of "
                        "ten million square kilometers. Islands can be either individually or in groups. Such islands are called team island. "
                        "The peninsula, on the other hand, is a geographical form surrounded by water but connected to the main land on one side."
                        " In terms of earth science, islands are basically "
                        "divided into continental islands and oceanic islands. Floating islands are a new subject of earth science.",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  )),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FadeAnimation(
            1.0,
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Activities",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          FadeAnimation(
            1.0,
            Container(
              height: 100.0,
              width: double.infinity,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  childrenActives(
                      "https://cdn.pixabay.com/photo/2017/09/07/13/58/water-2725337_1280.jpg"),
                  childrenActives(
                      "https://cdn.pixabay.com/photo/2014/12/15/17/17/scuba-diver-569333__480.jpg"),
                  childrenActives(
                      "https://cdn.pixabay.com/photo/2013/02/09/04/33/scuba-diving-79606__480.jpg"),
                  childrenActives(
                      "https://cdn.pixabay.com/photo/2014/06/27/08/49/underwater-378216__480.jpg"),
                  childrenActives(
                      "https://cdn.pixabay.com/photo/2015/03/26/10/10/turtle-691040__480.jpg"),
                ],
              ),
            ),
          ),
          FadeAnimation(
            1.0,
            Container(
              height: 78.0,
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price",
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                          Text(
                            "\$499.00",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          "Detailed review",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

Widget childrenActives(String imgUrlchild) {
  return Padding(
    padding: EdgeInsets.only(left: 13.0),
    child: Container(
      height: 60.0,
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
            image: NetworkImage(imgUrlchild), fit: BoxFit.cover),
      ),
    ),
  );
}
