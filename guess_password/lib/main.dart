import 'package:flutter/material.dart';
import 'package:guess_password/screen/homePage.dart';
import 'package:guess_password/screen/instructScreen.dart';
import 'package:guess_password/screen/selectPage.dart';
import 'package:guess_password/screen/winScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/home':(context) =>   const MyHomePage(title: '',),
        '/win':(context) =>  const WinnerScreen(sendRandomNumber: '',),
        '/instruct':(context)=> const instruct()
      },
      home: const selectPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [const Color.fromARGB(255, 221, 75, 182).withOpacity(0.8),
            const Color.fromARGB(255, 132, 245, 226).withOpacity(0.8)])
        ),
        child: const MyDataTable())
    );
  }
}
