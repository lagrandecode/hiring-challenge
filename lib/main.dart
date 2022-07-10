import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            for (int i = 0; i < 3; i++)
              Expanded(
                child: Column(
                  children: [
                    Text("Set ${i}",style: Theme.of(context).textTheme.headline6,),
                    Expanded(child: ListView(
                      shrinkWrap: true,
                      children: [
                        for(int j=0; j<100; j++)
                          Center(child: Text("{${i}, ${j}}")),
                      ],
                    ))
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}