import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/shared/themes/theme_color.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Dashboard"}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width * .4,
            height: 48,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              onPressed: controller.logout,
              color: ThemeColor.orange,
              child: Text(
                'LOGOUT',
                style: TextStyle(
                    color: ThemeColor.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
