# PIT Slider Carousel

This is a Carousel with dot indicator or page number.

*Note*: This Components is still under development, and  might has so many bugs.

## Installation


First, add `pit_slider_carousel` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).
![alt text](https://github.com/Suzaku10/slideshow/blob/master/image_sample/Screenshot_1564128434.png "Example")
```
pit_slider_carousel: ^0.1.0
```

## Example
```
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
```