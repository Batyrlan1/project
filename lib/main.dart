import 'package:flutter/material.dart';
import 'package:project1/Pages/history.dart';
import 'package:project1/Pages/home.dart';
import 'package:project1/Pages/pay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const PayPage(),
    const HistoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.greenAccent,
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        selectedLabelStyle: const TextStyle(fontSize: 11),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: "Расписание",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: "Оплата",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outbond_outlined),
            label: "История",
          ),
        ],
      ),
    );
  }
}
