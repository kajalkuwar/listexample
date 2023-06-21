import 'package:flutter/material.dart';
import 'package:listexample/listViewClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        children: [
          const ListViewClass(),
          Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height * 0.42,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.red),
              child: const Text(
                "Second Page",
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height * 0.42,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.purple),
              child: const Text(
                "Third Page",
                style: TextStyle(fontSize: 40),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
