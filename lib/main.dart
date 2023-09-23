import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:indemandcaredemo/screens/authenticate/authenticate.dart';
import 'package:indemandcaredemo/screens/homepage/home_page.dart';
import 'package:indemandcaredemo/screens/wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return const Authenticate();
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Indemand care')),
    //   body: const HomePage(),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       debugPrint("Upload Something");
    //     },
    //     child: const Icon(Icons.add),
    //   ),
    //   bottomNavigationBar: NavigationBar(destinations: const [
    //     NavigationDestination(icon: Icon(Icons.supervised_user_circle_outlined), label: "Feed"),
    //     NavigationDestination(icon: Icon(Icons.home), label: "Home"),
    //     NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
    //   ],
    //   onDestinationSelected: (int index){
    //     setState(() {
    //     currentPage = index;
    //   });
    //   },
    //   selectedIndex: currentPage,
    //   ),
    // );
  }
}
