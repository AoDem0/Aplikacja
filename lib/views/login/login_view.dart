import 'package:dsw52708/utils/my_colors.dart';
import 'package:dsw52708/utils/my_images.dart';
import 'package:dsw52708/views/homeScreen/home_screen.dart';
import 'package:dsw52708/views/register/register_view.dart';
import 'package:dsw52708/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    //const boolValue = false;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.whiteColor,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 62),
                  Image.asset(MyImages.logo),
                  const SizedBox(height: 21),
                  _signInText(),
                  const SizedBox(height: 40),
                  const BasicTextFormField(hintText: 'Email', prefixIconPath: MyImages.person),
                  const SizedBox(height: 30),
                  const BasicTextFormField(hintText: 'Password', prefixIconPath: MyImages.lock),
                  const SizedBox(height: 30),
                  _forgot(),
                  const SizedBox(height: 30),
                  _signInButton(context),
                  const SizedBox(height: 120),
                  _signUpTextClick(context),
          
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signInText() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Sign in',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: MyColors.purpleColor,
      ),
    ),
  );
}

Widget _forgot() {
  return Align(
    alignment: Alignment.centerRight,
    child: Text(
      'Forgot Password?',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: MyColors.purpleColor,
      ),
    ),
  );
}

Widget _signInButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.buttonColor,
        minimumSize: const Size.fromHeight(50),
      ),
      child: const Text('Sign in',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),),
        );
      },
    ),
  );
}

Widget _signUpTextClick(BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        'Don’t have an account? ',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: MyColors.purpleColor,
        ),

      ),
      GestureDetector(
        child: Text(
          'Sign up?',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: MyColors.purpleColor,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegisterView()),
          );
        },
      ),
    ],
  );
}
