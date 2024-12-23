import 'package:bmi/src/core/widgets/custom_button.dart';
import 'package:bmi/src/core/widgets/custom_text_field.dart';
import 'package:bmi/src/core/widgets/sixed_box.dart';
import 'package:bmi/src/features/home/views/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailControlller = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController tokenController = TextEditingController();

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
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                  controller: nameController,
                  label: 'Name',
                  hintText: 'enter your name',
                  prifixiconData: Icons.text_fields_outlined,
                  obs: false,
                  validator: (name) {
                    if (name!.length < 3) {
                      return 'enter valid name ';
                    }
                  },
                  keyType: TextInputType.name),
              sizedBox(),
              CustomTextField(
                  controller: idController,
                  label: 'National Id',
                  hintText: 'Enter your National id ',
                  prifixiconData: Icons.add_card_rounded,
                  validator: (id) {
                    if (id!.length != 14) {
                      return 'enter valid id number';
                    }
                  },
                  obs: false,
                  keyType: TextInputType.number),
              sizedBox(),
              CustomTextField(
                controller: emailControlller,
                label: 'Email',
                hintText: 'Enter your email address',
                keyType: TextInputType.emailAddress,
                obs: false,
                prifixiconData: Icons.email_outlined,
              ),
              sizedBox(),
              CustomTextField(
                controller: passwordController,
                label: 'Password',
                hintText: 'Enter your password',
                keyType: TextInputType.visiblePassword,
                obs: true,
                validator: (pass) {
                  if (pass!.characters.length != 8) {
                    return 'at least 8 char  ';
                  }
                },
                prifixiconData: Icons.password,
              ),
              sizedBox(),
              CustomTextField(
                controller: phoneController,
                label: 'Phone',
                hintText: 'Enter your phone number',
                keyType: TextInputType.phone,
                validator: (phone) {
                  if (phone!.length != 11) {
                    return 'enter 11 digits';
                  }
                },
                obs: false,
                prifixiconData: Icons.phone,
              ),
              sizedBox(),
              CustomTextField(
                  controller: tokenController,
                  label: 'Token',
                  hintText: 'Enter your token',
                  keyType: TextInputType.number,
                  obs: false,
                  validator: (val) {
                    if (val!.length < 3) {
                      return 'it must be more than 3';
                    }
                  },
                  prifixiconData: Icons.token),
              sizedBox(),
              CustomButton(onTap: () {}, text: 'Register Now')
            ],
          ),
        ),
      ),
    );
  }
}
