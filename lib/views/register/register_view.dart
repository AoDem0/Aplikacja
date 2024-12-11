import 'package:dsw52708/utils/my_colors.dart';
import 'package:dsw52708/utils/my_images.dart';
import 'package:dsw52708/views/login/login_view.dart';
import 'package:dsw52708/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const SizedBox(height: 21),
                  _backButton(context),
                  const SizedBox(height: 60),
                  _signUpText(),
                  const SizedBox(height: 21),
                  const BasicTextFormField(hintText: 'Full name', prefixIconPath: MyImages.person),
                  const SizedBox(height: 21),
                  const BasicTextFormField(hintText: 'Email', prefixIconPath: MyImages.mail),
                  const SizedBox(height: 21),
                  const BasicTextFormField(hintText: 'Password', prefixIconPath: MyImages.lock),
                  const SizedBox(height: 21),
                  const BasicTextFormField(hintText: 'Confirm Password', prefixIconPath: MyImages.lock),
                  const SizedBox(height: 40),
                  _signUpButton(context),
                  const SizedBox(height: 120),
                  _signInTextClick(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpText() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Sign up',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: MyColors.purpleColor,
      ),
    ),
  );
}

Widget _backButton(BuildContext context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text('Back'),
    ),
  );
}

Widget _signUpButton(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.buttonColor,
        minimumSize: const Size.fromHeight(50),
      ),
      child: const Text(
        'Sign Up',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },

    ),
  );
}

Widget _signInTextClick (BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text(
        'Already have an account? ',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: MyColors.purpleColor,
        ),
      ),
      GestureDetector(
        child: Text(
          'Sign in',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: MyColors.purpleColor,),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginView()),
          );
        },
      ),
    ],
  );
}







