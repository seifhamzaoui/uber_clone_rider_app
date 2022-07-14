import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_clone/application/auth/register/register_bloc.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/core/brand_colors.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  showSnackbar(String text, BuildContext context) {
    SnackBar snackbar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => getIt<RegisterBloc>(),
      child: BlocConsumer<RegisterBloc, RegisterState>(listener: (ctx, state) {
        print('the page is loading ${state.isloading}');
        state.failureorsuccess.fold(() => null, (ForS) {
          ForS.fold((failure) {
            showSnackbar(
                failure.when(
                  invalidEmailAndPasswordCombination: () =>
                      'Invalid Email and password combination.',
                  emailAlreadyinUse: () => 'Email is already in use.',
                  dataInvalid: () => 'you are using an invalid data.',
                  serverError: () => 'Server error , try again.',
                ),
                context);
          }, (success) => showSnackbar('register succes', context));
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
                    'Register as a rider',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Bolt-bold', fontSize: 30),
                  ),
                  SizedBox(
                    height: 40,
                    child: state.isloading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : null,
                  ),
                  Form(
                    autovalidateMode:
                        state.showErrors ? AutovalidateMode.always : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        const FullNameTextField(),
                        const EmailTextField(),
                        const PhoneTextField(),
                        const PasswordTextField(),
                        const SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {
                            BlocProvider.of<RegisterBloc>(context)
                                .add(const RegisterEvent.register());
                          },
                          child: Text(
                            'REGISTER',
                            style: TextStyle(fontSize: 20, fontFamily: 'Bolt-bold'),
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

final password = 'Seif2000@';
final email = 'Seifhamz232@gmail.com';
final phone = "0559201510";
final name = 'seif hamzaoui';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: password,
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
      initialValue: phone,
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
      initialValue: email,
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
      initialValue: name,
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
