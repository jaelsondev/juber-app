import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/shared/themes/theme_color.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  ReactionDisposer disposer;
  bool showHome = false;

  @override
  void initState() {
    super.initState();
    disposer = autorun((_) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final isLogged = prefs.getBool('isLogged');
      if (isLogged != null && isLogged) {
        Modular.to.pushReplacementNamed('/dashboard');
      } else {
        setState(() {
          showHome = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    disposer();
  }

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return Scaffold(
      body: !showHome
          ? Container()
          : Container(
              width: screen.width,
              height: screen.height,
              child: Column(
                children: <Widget>[
                  Container(
                    height: screen.height * .4,
                    padding: EdgeInsets.only(bottom: 30),
                    color: ThemeColor.pink,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image(
                          width: 100,
                          height: 155,
                          image: AssetImage("lib/app/assets/images/logo.png")),
                    ),
                  ),
                  Container(
                    height: screen.height * .6,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("lib/app/assets/images/bg.png"),
                            fit: BoxFit.cover)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 32, right: 32, bottom: 20),
                        height: screen.height * .1,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: screen.width * .4,
                              height: 44,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                onPressed: () {
                                  Modular.to.pushNamed('/signup');
                                },
                                color: ThemeColor.white,
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: ThemeColor.orange,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Container(
                              width: screen.width * .4,
                              height: 44,
                              child: OutlineButton(
                                borderSide: BorderSide(color: ThemeColor.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                onPressed: () {
                                  Modular.to.pushNamed('/signin');
                                },
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      color: ThemeColor.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
