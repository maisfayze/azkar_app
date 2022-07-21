import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class lunchScreen extends StatefulWidget {
  const lunchScreen({Key? key}) : super(key: key);

  @override
  State<lunchScreen> createState() => _lunchScreenState();
}

class _lunchScreenState extends State<lunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      // Navigator.pushReplacementNamed(context, '/home_screen');
      Navigator.popAndPushNamed(context, '/home_screen');

    },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        alignment: Alignment.center,
        decoration:const BoxDecoration(
          gradient: LinearGradient(
              begin:AlignmentDirectional.topCenter,
              end:AlignmentDirectional.bottomCenter,
              colors: [
            Color(0xFF9FC088),
            Color(0xFFFFF89A),
          ],
          )
        ),
        child: Text('تطبيق المسبحة',style: GoogleFonts.tajawal(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Color(0xFFB3541E),
        ),),
      ),
    );
  }
}
