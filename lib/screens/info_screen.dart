import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class InfoScreen extends StatelessWidget {
InfoScreen({Key? key}) : super(key: key);

String _message ='No message';
  @override
  Widget build(BuildContext context) {
    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null && modalRoute.settings.arguments != null) {
      if(modalRoute.settings.arguments is Map<String, dynamic>){
        Map<String, dynamic> map = modalRoute.settings.arguments as Map<String, dynamic>;
        if(map.containsKey('message')) {
          _message = map['message'];
        }
      }
    }
    return Scaffold(
      backgroundColor:  Color(0xFFE4E9BE),
      appBar: AppBar(
        backgroundColor: Color(0xFF809A6F),
        title: Text('عن التطبيق',
          style: GoogleFonts.almarai(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: ()=>{Navigator.pop(context)}
            ,
          icon: Icon(Icons.arrow_forward_ios),
        ),
      ),
      body: Center(child: Text(_message,style:GoogleFonts.alata(
        color:Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),)),
    );
  }
}
