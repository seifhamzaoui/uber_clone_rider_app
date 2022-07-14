import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/auth/register/register_bloc.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/core/brand_colors.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return BlocProvider<RegisterBloc>(
      create: (context) => getIt<RegisterBloc>(),
      child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (ctx, state) {},
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
                        'Register as a rider',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Bolt-bold', fontSize: 30),
                      ),
                      const SizedBox(height: 40),
                      Form(
                        autovalidateMode:
                            state.showErrors ? AutovalidateMode.always : AutovalidateMode.disabled,
                        child: Column(
                          children: [
                            FullNameTextField(),
                            EmailTextField(),
                            PhoneTextField(),
                            PasswordTextField(),
                            const SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              onPressed: () {
                                BlocProvider.of<RegisterBloc>(context)
                                    .add(RegisterEvent.register());
                              },
                              child: const Text(
                                'REGISTER',
                                style: TextStyle(fontSize: 20, fontFamily: 'Bolt-bold'),
                              ),
                              color: BrandColors.colorGreen,
                              textColor: Colors.white,
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                          Text("Do you have an account? Login"),
                          GestureDetector(
                            onTap: () {
                              AutoRouter.of(context).pop(SignInPageRoute());
                            },
                            child: const Text(
                              " here!",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: const InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
        hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
      ),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.passwordChanged(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.password.value.fold(
            (failure) => failure.maybeMap(
                  empty: (e) => 'This field cannot be empty',
                  tooLong: (e) => 'password too long',
                  invalidPassword: (value) =>
                      'the password should contain at least : one number,one special charactere',
                  orElse: () => null,
                ),
            (r) => null);
      },
    );
  }
}

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: const InputDecoration(
        labelText: 'phone number',
        labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
        hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
      ),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.phoneNumberChanged(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.phoneNumber.value.fold(
            (failure) => failure.maybeMap(
                  invalidPhoneNumber: (e) => 'this is not a valid phone number',
                  orElse: () => null,
                ),
            (r) => null);
      },
    );
  }
}

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email adress',
        labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
        hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
      ),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.emailChanged(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.emailAdress.value.fold(
            (failure) => failure.maybeMap(
                  invalidEmail: (value) => 'This is not a valide email adress',
                  orElse: () => null,
                ),
            (r) => null);
      },
    );
  }
}

class FullNameTextField extends StatelessWidget {
  const FullNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Full name',
        labelStyle: TextStyle(fontFamily: 'Bolt-regular', fontSize: 14),
        hintStyle: TextStyle(fontFamily: 'Bolt-regular'),
      ),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.fullnameChanged(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.fullName.value.fold(
              (failure) => failure.maybeMap(
                empty: (e) => 'This field cannot be empty',
                tooLong: (e) => 'too long',
                orElse: () => null,
              ),
              (r) => null,
            );
      },
    );
  }
}
