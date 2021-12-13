import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupPage extends StatefulWidget {
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repasswordController = TextEditingController();

  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Sign Up',
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
                      ]),
                      controller: _nameController,
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
                        labelText: 'Your Full Name',
                        labelStyle: grayTextStyle.copyWith(
                          color: grayColor.withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
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
                      bottom: 22.0,
                    ),
                    child: TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                        MinLengthValidator(8,
                            errorText:
                                "Password must contain atleast 8 characters"),
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
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 22.0,
                    ),
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Required";
                        }
                        return MatchValidator(
                                errorText: "Passwords don't match")
                            .validateMatch(val, _passwordController.text);
                      },
                      obscureText: obscure,
                      controller: _repasswordController,
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
                        labelText: 'Confirm Password',
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

    Widget createButton() {
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
            'Create Account',
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
          top: 160,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: grayTextStyle,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/login',
                );
              },
              child: Text(
                'Log In',
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: defaultMargin,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              header(),
              formInput(),
              createButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
