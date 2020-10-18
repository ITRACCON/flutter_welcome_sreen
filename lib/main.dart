import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF1794d9),
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://www.tellforceblog.com/wp-content/uploads/2019/03/keyguard_default_wallpaper_blue.jpg',
                      ),
                      fit: BoxFit.cover
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        offset: Offset(0,5),
                        blurRadius: 4
                      )
                    ]
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 60),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'WELCOME',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF1794d9),
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.7),
                                    offset: Offset(4,0),
                                    blurRadius: 2
                                )
                              ]
                          ),
                          child: SizedBox(
                            width: 1,
                            height: 100,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]
          ),
        )
    );
  }
}
