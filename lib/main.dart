import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Weather Forecast",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          body:
              // new Scaffold(
              // backgroundColor: Colors.red,
              _buildBody()),
      // ),
    );
  }
}

Widget _buildBody() {
  return Stack(children: [
    Container(
      decoration: BoxDecoration(color: Colors.red),
    ),
    SingleChildScrollView(
      child: Column(children: <Widget>[
        _textFieldCity(),
        _textFieldCityDetail(),
        _textFieldTemperatureDetail(),
        _textFieldExtraWeatherDetail(),
        _horizontalListViewName(),
        _horizontalListView(),
      ]),
    )
  ]);
}

Container _textFieldCity() {
  return Container(
    margin: const EdgeInsets.all(10.0),
    padding: const EdgeInsets.all(4.0),
    child: TextField(
      decoration: InputDecoration(
          focusColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.white),
          hintText: "Enter City Name",
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white70,
          )),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.white,
          ))),
    ),
  );
}

Column _textFieldCityDetail() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(4.0),
          child: Text(
            "Murmansk Oblast, RU",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
        Container(
          child: Text(
            "Friday, Mar 20, 2020",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        )
      ]);
}

Column _textFieldTemperatureDetail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin:
                const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 50),
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 70,
            ),
          ),
          Column(
            children: [
              Text(
                "14ºF",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
              Text(
                "LIGHT SNOW",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      )
    ],
  );
}

Container _textFieldExtraWeatherDetail() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 50),
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
          Text(
            "5",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
            "km/hr",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
          Text(
            "3",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
            "%",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(3),
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
          Text(
            "20",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
            "%",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
              color: Colors.white,
            ),
          )
        ],
      ),
    ],
  ));
}

Container _horizontalListViewName() {
  return Container(
    margin: const EdgeInsets.only(top: 70),
    child: Text(
      "7-DAY WEATHER FORECAST",
      style: TextStyle(color: Colors.white, fontSize: 16),
    ),
  );
}

Container _horizontalListView() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 5),
    padding: const EdgeInsets.all(5),
    height: 140.0,
    child: ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Friday",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "6 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Saturday",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "5 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Sunday",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "22 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Monday",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "24 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Tuesday",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "21 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Wednesday",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "18 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Color.fromARGB(102, 255, 255, 255),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          margin: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Thursday",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "17 ºF",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                    size: 47,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

// void main() {
//   runApp(
//     MaterialApp(
//       // MyApp(),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => MyApp(),
//         '/firstPage': (context) => Schedule(),
//       },
//     ),
//   );
// }
