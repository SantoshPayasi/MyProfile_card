import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile App",
      theme: ThemeData(primarySwatch: Colors.teal, primaryColor: Colors.teal),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/MyImage.png"),
                      fit: BoxFit.cover,
                    )),
              ),
              Gap(10),
              Text("Santosh Kumar payasi",
                  style: GoogleFonts.alexBrush(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1)

                  // GoogleFonts.alexBrush(
                  //     fontSize: 35,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.white,
                  //     height:1
                  // ),
                  ),
              Text("Flutter Developer",
                  style: GoogleFonts.actor(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade300,
                      letterSpacing: 3,
                      height: 0.7)),
              Container(
                height: 200,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      leading: Icon(
                        FluentIcons.call_12_filled,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text(
                        "+7898065191",
                        style: TextStyle(letterSpacing: 2),
                      ),
                      tileColor: Colors.white,
                    ),
                    Gap(10),
                    ListTile(
                      tileColor: Colors.white,
                      leading: Icon(
                        FluentIcons.mail_24_filled,
                        color: Theme.of(context).primaryColor,
                      ),
                      title: Text("Spayasi78@gmail.com",
                          style: TextStyle(letterSpacing: 1)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
