import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PictureChanger(),
    );
  }
}

class PictureChanger extends StatefulWidget {
  const PictureChanger({super.key});

  @override
  PictureChangerState createState() => PictureChangerState();
}

class PictureChangerState extends State<PictureChanger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture Changer App'),
      ),
      body: Center(
        child: ImageSlideshow(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 2,
          children: List.generate(
            _imageList.length,
            (index) => Image.asset(
              _imageList[index],
            ),
          ),
        ),
      ),
    );
  }

  final List<String> _imageList = [
    'asset/one.jpg',
    'asset/two.jpg',
    'asset/three.jpg',
    'asset/four.jpg',
    'asset/five.jpg',
    'asset/six.jpg',
    'asset/seven.jpg',
    'asset/eight.jpg',
    'asset/nine.png',
    'asset/ten.jpg',
  ];
}
