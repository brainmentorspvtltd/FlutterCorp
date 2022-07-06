import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      )),
      // theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 10)],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.yellow, Colors.orange, Colors.greenAccent]),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: Colors.red, style: BorderStyle.solid, width: 3),
            //color: Color.fromARGB(255, 133, 208, 135)
          ),
          width: 300,
          height: 200,
          child: Text(
            'Container Demo',
            style: GoogleFonts.pacifico(fontSize: 40),
          ),
          //color: Colors.tealAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.redAccent,
        ),
        appBar: AppBar(
          centerTitle: true,
          //backgroundColor: Colors.deepPurple,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.search),
            Icon(Icons.phone),
            SizedBox(
              width: 20,
            )
          ],
          title: Text('Hello Flutter'),
        ),
        //backgroundColor: Colors.yellow,
      )
      //home: SafeArea(child: Text('Hello Flutter')
      //),
      ));
}
