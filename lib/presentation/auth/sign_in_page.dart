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
  showSnackbar(String text, BuildContext context) {
    SnackBar snackbar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(listener: (context, state) {
      state.authResponseOptionn.fold(() => null, (ForS) {
        ForS.fold((failure) {
          showSnackbar(
              failure.when(
                invalidEmailAndPasswordCombination: () => 'Invalid Email and password combination.',
                emailAlreadyinUse: () => 'Email is already in use.',
                dataInvalid: () => 'you are using an invalid data.',
                serverError: () => 'Server error , try again.',
              ),
              context);
        }, (success) => AutoRouter.of(context).push(HomePageRoute()));
      });
    }, builder: (context, state) {
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
                SizedBox(
                    height: 40,
                    child: state.isloading ? Center(child: CircularProgressIndicator()) : null),
                Form(
                  autovalidateMode:
                      state.showErrors ? AutovalidateMode.always : AutovalidateMode.disabled,
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
                          context.read<SignInBloc>().add(SignInEvent.emailChanged(value));
                        },
                        validator: (value) {
                          return context.read<SignInBloc>().state.emailAdress.value.fold(
                              (f) => f.maybeMap(
                                    invalidEmail: (value) => 'This is not a valid email adress',
                                    orElse: () => null,
                                  ),
                              (r) => null);
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
                            hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
                            errorMaxLines: 3),
                        onChanged: (value) {
                          context.read<SignInBloc>().add(SignInEvent.passwordChanged(value));
                        },
                        validator: (_) {
                          return context.read<SignInBloc>().state.password.value.fold(
                              (f) => f.maybeMap(
                                  invalidPassword: (value) =>
                                      'The password should contain at least : one number ,one special charctere',
                                  orElse: () {
                                    return null;
                                  }),
                              (r) => null);
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        onPressed: () {
                          context.read<SignInBloc>().add(SignInEvent.signIn());
                        },
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
