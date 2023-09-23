import 'package:flutter/material.dart';
import 'package:indemandcaredemo/screens/homepage/home_page.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}