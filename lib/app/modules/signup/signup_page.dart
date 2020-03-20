import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/shared/themes/theme_color.dart';
import 'signup_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Signup"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
  @override
  void initState() {
    controller.setupValidations();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: ThemeColor.white,
        elevation: 0,
        iconTheme: IconThemeData(color: ThemeColor.blue),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Modular.to.pushReplacementNamed('/signin');
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: ThemeColor.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 88),
          padding: EdgeInsets.only(left: 22, right: 22, bottom: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: ThemeColor.blue,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'NAME',
                        style: TextStyle(
                            color: ThemeColor.grayDark,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Observer(
                          builder: (_) => TextFormField(
                                onChanged: controller.setName,
                                cursorColor: ThemeColor.orange,
                                decoration: InputDecoration(
                                  errorText:
                                      controller.formError.attributes["name"],
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                ),
                              ))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'EMAIL',
                        style: TextStyle(
                            color: ThemeColor.grayDark,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Observer(
                          builder: (_) => TextFormField(
                                onChanged: controller.setEmail,
                                cursorColor: ThemeColor.orange,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  errorText:
                                      controller.formError.attributes["email"],
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                ),
                              )),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'PASSWORD',
                        style: TextStyle(
                            color: ThemeColor.grayDark,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Observer(
                          builder: (_) => TextFormField(
                                onChanged: controller.setPassword,
                                cursorColor: ThemeColor.orange,
                                obscureText: controller.showPassword,
                                decoration: InputDecoration(
                                  errorText: controller
                                      .formError.attributes["password"],
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        controller.setShowPassword();
                                      },
                                      child: Icon(
                                        controller.showPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: ThemeColor.orange,
                                      )),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                ),
                              ))
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'CONFIRM PASSWORD',
                        style: TextStyle(
                            color: ThemeColor.grayDark,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Observer(
                          builder: (_) => TextFormField(
                                onChanged: controller.setConfirmPassword,
                                cursorColor: ThemeColor.orange,
                                obscureText: controller.showConfirmPassword,
                                decoration: InputDecoration(
                                  errorText: controller.formError
                                      .attributes["password_confirmation"],
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        controller.setShowConfirmPassword();
                                      },
                                      child: Icon(
                                        controller.showConfirmPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: ThemeColor.orange,
                                      )),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16),
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: ThemeColor.gray)),
                                ),
                              ))
                    ],
                  ),
                  SizedBox(
                    height:
                        controller.formError.attributes['signupError'] != null
                            ? 16
                            : 0,
                  ),
                  Observer(
                    builder: (_) => Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            controller.formError.attributes['signupError'] ??
                                '',
                            style: TextStyle(
                                color: ThemeColor.orange,
                                fontSize: 13,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  RichText(
                      text: TextSpan(
                    text: "By clicking \"Sign Up\" you agree to our ",
                    children: [
                      TextSpan(
                        text: 'terms and conditions ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ThemeColor.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: 'as well as our ',
                        style: TextStyle(
                            color: ThemeColor.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: 'privacy policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: ThemeColor.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                    style: TextStyle(
                        color: ThemeColor.blue,
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                  ))
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: Observer(
                    builder: (_) => RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          disabledColor: controller.loading
                              ? ThemeColor.orange
                              : Colors.grey,
                          onPressed: controller.loading || !controller.canSignup
                              ? null
                              : controller.signup,
                          color: ThemeColor.orange,
                          child: controller.loading
                              ? Center(
                                  child: Container(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 3,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        ThemeColor.white),
                                  ),
                                ))
                              : Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      color: ThemeColor.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
