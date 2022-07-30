import 'package:demo/prodact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int _seleIndex = 0;
  void tab(int Index) {
    setState(() {
      _seleIndex = Index;
    });
  }

  List<Widget> product = const [
    HomePage(),
    Icon(Icons.abc),
    Icon(Icons.abc_rounded),
    Icon(Icons.padding),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.rss_feed), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _seleIndex,
        onTap: tab,
      ),
      body: Center(
        child: product.elementAt(_seleIndex),
      ),
    );
  }
}
