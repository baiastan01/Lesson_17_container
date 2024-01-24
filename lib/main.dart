import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          
            child: Column(
              children: [
                MyContener(),
                SizedBox(height: 10,),
                Icon(
                  Icons.airplanemode_on_rounded,
                  size: 100,
                  color: Color.fromARGB(255, 143, 207, 225),
                ),
                Spacer(),
                Icon(
                  Icons.airplanemode_on_rounded,
                  size: 100,
                  color: Color.fromARGB(255, 143, 207, 225),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class MyContener extends StatelessWidget {
  const MyContener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 10,
          color: Colors.black,
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            color: Colors.pink,
            blurRadius: 20,
            spreadRadius: 10,
          )
        ],
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Colors.blue,
            Colors.white,
          ],
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),

        // borderRadius: BorderRadius.vertical(
        //   top: Radius.circular(25),
        //   bottom: Radius.circular(25),
        // )
        //     borderRadius: BorderRadius.all(
        //     Radius.circular(
        //     25,
        //   ),
        // ),
      ),
      height: 380,
      width: 380,
    );
  }
}
