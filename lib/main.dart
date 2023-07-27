import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _weatherForecast(),
    );
  }
}

Scaffold _weatherForecast() {
  return Scaffold(
    backgroundColor: Colors.redAccent,
    appBar: AppBar(
      title: const Text(
        "Weather Forecast",
      ),
      centerTitle: true,
      backgroundColor: Colors.redAccent,
    ),
    body: Column(
      children: [
        _searchBar(),
        const SizedBox(
          height: 25.0,
        ),
        _info(),
        const SizedBox(
          height: 40.0,
        ),
        _currentWeather(),
        const SizedBox(
          height: 40.0,
        ),
        _weatherCharacteristics(),
        const SizedBox(
          height: 25.0,
        ),
        _sevenDayForecast(),
      ],
    ),
  );
}

Padding _searchBar() {
  return const Padding(
    padding: EdgeInsets.all(15.0),
    child: SearchBar(
      hintText: "Enter City Name",
    ),
  );
}

Column _info() {
  return const Column(
    children: [
      Text(
        "New York, USA",
        style: TextStyle(
          fontSize: 42.0,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
      Text(
        "Wednesday, July 26, 2023",
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
    ],
  );
}

Row _currentWeather() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.sunny,
        color: Colors.white,
        size: 84.0,
      ),
      SizedBox(
        width: 10.0,
      ),
      Column(
        children: [
          Text(
            "14 °C",
            style: TextStyle(
              color: Colors.white,
              fontSize: 42.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "Sunny",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      )
    ],
  );
}

Row _weatherCharacteristics() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _weatherCharacteristic(5, "km/hr"),
      _weatherCharacteristic(3, "%"),
      _weatherCharacteristic(20, "%"),
    ],
  );
}

Column _weatherCharacteristic(int value, String name) {
  return Column(
    children: [
      const Icon(
        Icons.ac_unit_sharp,
        color: Colors.white,
        size: 32.0,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        value.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 22.0,
        ),
      ),
      const SizedBox(
        height: 10.0,
      ),
      Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      )
    ],
  );
}

_sevenDayForecast() {
  return Column(
    children: [
      const Text(
        "7-Day Forecast",
        style: TextStyle(
          color: Colors.white,
          fontSize: 28.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      const SizedBox(
        height: 15.0,
      ),
      _sevenDayForecastSlider()
    ],
  );
}

SingleChildScrollView _sevenDayForecastSlider() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        _sevenDayForecastCard(),
        _sevenDayForecastCard(),
        _sevenDayForecastCard(),
        _sevenDayForecastCard(),
        _sevenDayForecastCard(),
        _sevenDayForecastCard(),
        _sevenDayForecastCard(),
      ],
    ),
  );
}

Padding _sevenDayForecastCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: SizedBox(
      width: 250,
      child: ListView(
        shrinkWrap: true,
        children: [
          Card(
            color: Colors.grey.shade500,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Thursday",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.w300),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "6 °C",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.sunny,
                        color: Colors.white,
                        size: 64.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
