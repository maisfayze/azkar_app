import 'package:azkar_app/screens/faqs_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _content ='استغفر الله';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'مسبحة الاذكار',
          style: GoogleFonts.almarai(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            onSelected:(String value){
              if(_content !=value){
                setState((){
                  _content=value;
                  _counter=0;
                });

              }
            },
              offset: Offset(10,40),
              itemBuilder: (context) {

            return [

              PopupMenuItem(
                height: 25,
                child: Text(
                  'استغفر الله',
                  style: GoogleFonts.almarai(

                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: 'استغفر الله',
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                height: 25,
                child: Text(
                  'الحمد لله',
                  style: GoogleFonts.almarai(

                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: 'الحمد لله',
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                height: 25,

                child: Text(
                  'سبحان الله',
                  style: GoogleFonts.almarai(

                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: 'سبحان الله',
              ),
            ];
          }),
          IconButton(onPressed: (){
            Navigator.pushNamed(context,  '/info_screen',arguments: {
              'message':'Info Screen'
            });
          }, icon: Icon(Icons.info),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FaqsScreen(message: 'FAQs Screen'),
                ),
              );
              // Navigator.pushNamed(context, '/faqs_screen');
            },
            icon: Icon(Icons.question_answer),
          ),
        ],

      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [
            Color(0xFF809A6F),
            Color(0xFFE4E9BE),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://durrarosary.com/wp-content/uploads/2021/10/DR-Product-13.png'),
                  ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFCC704B),
                      blurRadius: 6,
                      offset: Offset(0, 0.6),
                    )
                  ]),
            ),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFCC704B),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.almarai(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 70,
                    alignment: Alignment.center,
                    color: Color(0xFFF3C892),
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.almarai(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFCFB784),
                      ),
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      child: Text(
                        'تسبيح',
                        style: GoogleFonts.almarai(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFEADEB8),
                      ),
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      child: Text(
                        'إعادة',
                        style: GoogleFonts.almarai(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
