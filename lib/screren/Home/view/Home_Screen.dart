import 'package:crcbuzze/screren/Home/modal/modalscreen.dart' hide State;
import 'package:crcbuzze/screren/controler/Homecontroler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeControler homeControler = Get.put(HomeControler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:FutureBuilder(
          future: homeControler.GetData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else if (snapshot.hasData) {
              CrickbuzzModel? c1 = snapshot.data;

              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${homeControler.c1!.typeMatches![index].matchType}"),
                  );
                },
                itemCount: c1!.typeMatches!.length,
              );
            }
            return Container(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
