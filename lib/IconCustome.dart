import 'package:flutter/material.dart';

class IconCustome extends StatefulWidget {
  IconCustome({required this.name, required this.icons, Key? key})
      : super(key: key);
  String name;
  IconData icons;

  @override
  State<IconCustome> createState() => _IconCustomeState();
}

class _IconCustomeState extends State<IconCustome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 90,
      width: 70,
      decoration: const BoxDecoration(
        // color: Colors.red,
        shape: BoxShape.circle,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: Icon(widget.icons),
          ),
          Text(
            widget.name,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
