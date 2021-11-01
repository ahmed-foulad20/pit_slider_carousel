# example/README.md
```
import 'package:flutter/material.dart';
import 'package:pit_slider_carousel/pit_slider_carousel.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CarouselController ctrl;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Carousel Example'),
          ),
          body: _buildCarousel()),
    );
  }

  Widget _buildCarousel() {
    List<CarouselItem> list = [];
    for (int i = 0; i < 21; i++) {
      list.add(CarouselItem(
        Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Container(
              color: i % 2 == 0 ? Colors.red : Colors.blue,
              child: Center(child: Text("${i}", style: TextStyle(fontSize: 32.0))),
            )),
      ));
    }

    ctrl = CarouselController(carouselItems: list);

    return new PitSliderCarousel(
        maxDotsIndicator: 10,
        dotSize: 6.0,
        activeDotColor: Colors.amber,
        dotColor: Colors.black,
        useDot: true,
        animationCurve: Curves.ease,
        autoPlay: false,
        dotPosition: Position(bottom: -10.0),
        carouselController: ctrl);
  }
}
```