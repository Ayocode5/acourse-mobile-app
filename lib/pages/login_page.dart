import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Log In',
            style: blackTextStyle.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
    }

    Widget formInput() {
      return Column(
        children: [
          Container(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 46.0,
                      bottom: 22.0,
                    ),
                    child: TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                        EmailValidator(
                            errorText: "Please enter a valid email address"),
                      ]),
                      controller: _emailController,
                      style: TextStyle(),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        labelText: 'Your Email Address',
                        labelStyle: grayTextStyle.copyWith(
                          color: grayColor.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    child: TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                      ]),
                      obscureText: obscure,
                      controller: _passwordController,
                      style: TextStyle(),
                      decoration: InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility,
                            color: Color(0xffDADADA),
                          ),
                          onPressed: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                        ),
                        labelText: 'Password',
                        labelStyle: grayTextStyle.copyWith(
                          color: grayColor.withOpacity(0.6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget forgotPassword() {
      return Container(
        padding: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forgot Password?',
              style: blueTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        padding: EdgeInsets.only(
          top: defaultMargin,
        ),
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pushReplacementNamed(
                context,
                '/home',
              );
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: blueColor,
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            'Log In',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        padding: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: grayTextStyle,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/signup',
                );
              },
              child: Text(
                'Sign Up',
                style: blueTextStyle.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            children: [
              header(),
              formInput(),
              forgotPassword(),
              loginButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
