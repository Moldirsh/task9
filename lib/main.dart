import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather Forecast"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _buildBody(),
        backgroundColor: Colors.red,
      ),
    );
  }
}

Container weekWeather(String day, String temperature) {
  return Container(
    width: 160,
    child: Card(
      elevation: 0,
      color: Colors.white38,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    day,
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 22),
                child: Column(
                  children: <Widget>[
                    Text(
                      temperature,
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 22),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                      size: 35.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.all(14.0),
      child: Column(
        children: <Widget>[
          _textField(),
          Padding(padding: EdgeInsets.only(top: 22.0, bottom: 22.0)),
          _cityDetail(),
          Padding(padding: EdgeInsets.only(top: 22.0, bottom: 22.0)),
          _temperatureDetail(),
          Padding(padding: EdgeInsets.only(top: 22.0, bottom: 22.0)),
          _extraWeatherDetail(),
          Padding(padding: EdgeInsets.only(top: 22.0, bottom: 22.0)),
          Text(
            "7-DAY WEATHER FORECAST",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
          _bottomDetail(),
        ],
      ),
    ),
  );
}

Row _textField() {
  return Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(
            Icons.search,
            color: Colors.white,
          ),
        ],
      ),
      SizedBox(width: 14.0),
      Column(
        children: <Widget>[
          Text(
            'Enter City Name',
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Column _cityDetail() {
  return Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Murmansk Oblast, RU',
            style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
      Padding(padding: EdgeInsets.only(top: 10.0)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Friday, Mar 20, 2020',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ],
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.white,
            size: 90.0,
          ),
        ],
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '14 °F',
                style: TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'LIGHT SNOW',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Row _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 35.0,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '5',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'km/hr',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
      SizedBox(width: 70.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 35.0,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '3',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '%',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
      SizedBox(width: 70.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 35.0,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '20',
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                '%',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Container _bottomDetail() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    height: 125.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        weekWeather("Friday", "6 °F"),
        weekWeather("Saturday", "5 °F"),
        weekWeather("Sunday", "22 °F"),
        weekWeather("Monday", "14 °F"),
        weekWeather("Tuesday", "9 °F"),
        weekWeather("Wednesday", "11 °F"),
        weekWeather("Thursday", "8 °F"),
      ],
    ),
  );
}
