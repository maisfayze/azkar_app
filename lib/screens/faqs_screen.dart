import 'package:flutter/material.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFE4E9BE),
      appBar: AppBar(
        backgroundColor: Color(0xFF809A6F),
        title: Text('FAQs'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(widget.message),
      ),
    );
  }
}