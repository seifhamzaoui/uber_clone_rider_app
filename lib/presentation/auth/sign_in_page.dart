import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/auth/sign_in/sign_in_bloc.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/core/value_failures/value_failures.dart';
import 'package:uber_clone/domain/core/value_object.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/core/brand_colors.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => getIt<SignInBloc>(),
      child: SigninForm(),
    );
  }
}

class SigninForm extends StatelessWidget {
  const SigninForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  children: [
                    const SizedBox(height: 80),
                    SizedBox(
                      height: 100,
                      child: Image.asset('images/logo.png'),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Sign in as a rider',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Bolt-bold', fontSize: 30),
                    ),
                    const SizedBox(height: 40),
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              labelText: 'Email adress',
                              labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
                              hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
                            ),
                            onChanged: (value) {
                              EmailAdress email = EmailAdress('sss');
                              print(email is ValueObject);
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
                              hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: const Text(
                              'LOGIN',
                              style: const TextStyle(
                                fontFamily: 'Bolt-bold',
                                fontSize: 20,
                              ),
                            ),
                            color: BrandColors.colorGreen,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            minWidth: double.infinity,
                            height: 40,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account? Sign up "),
                        GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).push(RegisterPageRoute());
                          },
                          child: const Text(
                            " here!",
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
