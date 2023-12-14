import 'package:flutter/material.dart';
import 'package:wingtrix/MainPages/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wingtrix', debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
    textTheme: TextTheme(
    bodyMedium: TextStyle(
    color: Colors.white, // Set the default text color to white
    fontFamily: 'font1', // Set the default font family to 'Font1'
    ), bodyLarge: TextStyle(
      color: Colors.white, // Set the default text color to white
      fontFamily: 'font2', // Set the default font family to 'Font1'
    ),bodySmall: TextStyle(
      color: Colors.white, // Set the default text color to white
      fontFamily: 'font2', // Set the default font family to 'Font1'
    ),
    ),
        ),
        home: FutureBuilder(
            future: Future.delayed(Duration(seconds: 3)),
            builder: (ctx, timer) =>
            timer.connectionState == ConnectionState.done
                ? Home() //Screen to navigate to once the splashScreen is done.
                : Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/wingtrix [Recovered]_prev_ui.png'),
              ),
            )),
    );
  }
}
