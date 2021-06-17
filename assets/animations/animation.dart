import 'package:flutter/material.dart';

class AnimationsPractice extends StatefulWidget {
  @override
  _AnimationsPracticeState createState() => _AnimationsPracticeState();
}

class _AnimationsPracticeState extends State<AnimationsPractice> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 500),
        vsync: this);

    animation = ColorTween(begin: Colors.purple, end: Colors.red[700]).animate(controller);

    controller.forward();

    animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        controller.reverse(from: 1.0);
        print(animation.value);
      } else 
      if(status == AnimationStatus.dismissed){
        controller.forward();
      }
    });

    controller.addListener(() {
      setState(() {
      });
      print(controller.value);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}