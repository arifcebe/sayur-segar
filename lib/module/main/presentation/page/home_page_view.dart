import 'package:flutter/widgets.dart';

class HomePageView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Home Page"),
    );
  }

}