import 'package:bmi/src/core/widgets/custom_button.dart';
import 'package:bmi/src/core/widgets/custom_text_field.dart';
import 'package:bmi/src/core/widgets/sixed_box.dart';
import 'package:bmi/src/features/home/views/widgets/app_bar.dart';
import 'package:bmi/src/features/login/views/screens/register_screen.dart';
import 'package:bmi/style/string_app.dart';
import 'package:bmi/style/text_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                  keyType: TextInputType.emailAddress,
                  controller: emailController,
                  obs: false,
                  label: 'Email',
                  hintText: 'Enter your Email Adress',
                  validator: (text) {
                    if (text!.isEmpty) return 'you must enter your email';
                  },
                  prifixiconData: Icons.email_outlined),
              sizedBox(),
              CustomTextField(
                keyType: TextInputType.visiblePassword,
                controller: passwordController,
                hintText: 'Enter Your Password',
                obs: true,
                label: 'Password',
                prifixiconData: Icons.password_outlined,
                validator: (pass) {
                  if (pass!.isEmpty) {
                    return 'you must enter your password';
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(onTap: () {}, text: 'Login'),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                  text: 'Register Now'),
            ],
          ),
        ),
      ),
    );
  }
}
