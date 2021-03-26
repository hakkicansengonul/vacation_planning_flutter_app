import 'package:flutter/material.dart';

List PopularPageList = [
  PopularPage(
      "https://cdn.pixabay.com/photo/2015/08/31/07/30/blue-mosque-915076__480.jpg",
      "Sultan Ahmet Mosque",
      "Turkey, Europe"),
  PopularPage(
      "https://cdn.pixabay.com/photo/2018/05/14/23/43/street-3401918__480.jpg",
      "Pantheon Street",
      "Italy, Europe"),
  PopularPage(
      "https://cdn.pixabay.com/photo/2019/11/14/01/13/amsterdam-4625104__480.jpg",
      "River Street",
      "Netherlands, Asia"),
  PopularPage(
      "https://cdn.pixabay.com/photo/2018/11/29/21/19/hamburg-3846525__480.jpg",
      "Candlian viewpoint package",
      "Israel, Asia"),
];

class PopularPage extends StatefulWidget {
  final String imgUrl;
  final String name;
  final String location;

  const PopularPage(this.imgUrl, this.name, this.location);
  @override
  _PopularPageState createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 130.0,
          width: 380.0,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(widget.imgUrl), fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.green,
                          ),
                          Text(widget.location),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text("4.9"),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.airplanemode_active_outlined,
                            color: Colors.blue,
                          ),
                          Text("\$490.00"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
