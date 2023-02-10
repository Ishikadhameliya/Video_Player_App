  import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';
  import 'package:video_player_app/res/globals.dart';
  import 'package:video_player_app/views/screens/carouse_page.dart';
  import 'package:video_player_app/views/screens/video_page.dart';

  void main() {
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const home(),
          'video_page': (context) => const video_page(),
          'carouse_page': (context) => const carouse_page(),
        },
      ),
    );
  }

  class home extends StatefulWidget {
    const home({Key? key}) : super(key: key);

    @override
    State<home> createState() => _homeState();
  }

  class _homeState extends State<home> {
    @override
    Widget build(BuildContext context) {
      double _height = MediaQuery.of(context).size.height;
      double _width = MediaQuery.of(context).size.width;
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("VIDEO"),
        ),
        body: ListView.builder(
          itemCount: Videos.all_photo.length,
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  Videos.initvalue = i;
                  Navigator.of(context).pushNamed('video_page');
                });
              },
              child: Container(
                height: _height * 0.2,
                width: _width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      "${Videos.all_photo[i]['image']}",
                      width: 360,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "${Videos.all_photo[i]['name']}",
                      style: GoogleFonts.atma(
                        textStyle: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
