import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wingtrix/MainPages/HomePage.dart';
import 'package:wingtrix/MainPages/profile.dart';
import 'package:wingtrix/MainPages/web.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  int currentTab=0;
  final Set screens ={
    HomePage(),
    Web(),
    Profile(),
  };

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context){
    return WillPopScope(
        onWillPop: () async {
          // Show the alert dialog and wait for a result
          bool exit = await showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Exit App'),
                content: Text('Are you sure you want to exit?'),
                actions: [
                  ElevatedButton(
                    child: Text('No'),
                    onPressed: () {
                      // Return false to prevent the app from exiting
                      Navigator.of(context).pop(false);
                    },
                  ),
                  ElevatedButton(
                    child: Text('Yes'),
                    onPressed: () async {
                      // Return true to allow the app to exit
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              );
            },
          );
          // Return the result to handle the back button press
          return exit ?? false;
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: PageStorage(
            child: currentScreen,
            bucket: bucket,
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 2, color: Colors.black, surfaceTintColor: Colors.black,
            shadowColor:  Colors.black,
            child: Container(
              height: 10, color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      minWidth: 25, onPressed: () {
                    setState(() {
                      currentScreen = HomePage();
                      currentTab = 0;
                       });
                     },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.home,
                            color: currentTab == 0? Color(0xffff79ac) : Colors.grey, size: 23,
                          ),
                          Text("Home", style: TextStyle(color: currentTab == 0?  Color(0xffff79ac) :Colors.grey, fontSize: 12))
                        ],
                      )
                  ),
                  MaterialButton(
                      minWidth: 25, onPressed: (){
                    setState(() {
                      currentScreen = Web();
                      currentTab = 1;
                    });
                  },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.web,
                            color: currentTab == 1? Color(0xffff79ac) : Colors.grey, size: 23,
                          ),
                          Text("Website", style: TextStyle(color: currentTab == 1?  Color(0xffff79ac) :Colors.grey, fontSize: 12))
                        ],
                      )
                  ),
                  MaterialButton(
                      minWidth: 25, onPressed: (){
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 2;
                    });
                  },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            color: currentTab == 2? Color(0xffff79ac):Colors.grey, size: 23,
                          ),
                          Text("User", style: TextStyle(color: currentTab == 2? Color(0xffff79ac):Colors.grey, fontSize: 12))
                        ],
                      )
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
