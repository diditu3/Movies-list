import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static String id = "Details_page";

  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Map items = ModalRoute.of(context)?.settings.arguments as Map;

    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Details"),),
      body: Column(
        children: [
          Image.network(items["arguments"]["Image"],
            height: MediaQuery.of(context).size.width/ 1.2,),
          Text(items["arguments"]["Name"], style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
          Text(items["arguments"]["Date"],),
          Text(items["arguments"]["Describe"],),
        ],
      ),
    ));
  }
}
