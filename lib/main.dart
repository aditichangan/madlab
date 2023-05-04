import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 226, 243, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(42, 47, 79, 1),
        title: const Text("Navigation and Routing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                height: 50,
                width: 150,
                child: Text(
                  "First Screen",
                  style: TextStyle(fontSize: 25),)),
            ElevatedButton(
              child: Text(
                "Go to next Screen =>",
                style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(164, 116, 236, 1.0)),
            )
          ],
        ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(199, 199, 250, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(42, 47, 79, 1),
        centerTitle: true,
        title: const Text("Navigation and Routing"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                height: 50,
                width: 200,
                child: Text(
                  "Second Screen",
                  style: TextStyle(fontSize: 25),)),
            ElevatedButton(
              child: Text("<= Go to previous Screen",
                style: TextStyle(color: Colors.white),),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstPage()),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(164, 116, 236, 1.0)),
            )
          ],
        ),
      ),

    );
  }
}
