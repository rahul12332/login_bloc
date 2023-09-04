import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:loginwithblock/signup/sign_up_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameCotroller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  String _gender = 'Male'; // Default gender value

  SignUpBloc signUpBloc = SignUpBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => signUpBloc,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 35, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.person, color: Colors.amber,),
                      SizedBox(width: 5,),
                      Expanded(child: TextField(
                        controller: nameCotroller,
                        decoration: const InputDecoration(
                            hintText: "UserName",
                            border: InputBorder.none
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 35, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.person, color: Colors.amber,),
                      SizedBox(width: 5,),
                      Expanded(child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                            hintText: "E-mail",
                            border: InputBorder.none
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 35, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.person, color: Colors.amber,),
                      SizedBox(width: 5,),
                      Expanded(child: TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none
                        ),
                      ))
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Column(
                  children: [
                    Text('Gender', style: TextStyle(fontSize: 16)),
                    BlocBuilder<SignUpBloc, SignUpState>(
                      builder: (context, state) {
                        print("Gender");
                        String selectedGender = "Male"; // Default to Male if state is not SignupGender

                        if (state is SignupGender) {
                          selectedGender = state.gender;
                        }

                        return Row(
                          children: <Widget>[
                            Radio<String>(
                              value: 'Male',
                              groupValue: selectedGender,
                              onChanged: (value) {
                                signUpBloc.add(SignGenderEvent(gender: value!));
                              },
                            ),
                            Text('Male'),
                            Radio<String>(
                              value: 'Female',
                              groupValue: selectedGender,
                              onChanged: (value) {
                                signUpBloc.add(SignGenderEvent(gender: value!));
                              },
                            ),
                            Text('Female'),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 35, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      )
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.person, color: Colors.amber,),
                      SizedBox(width: 5,),
                      Expanded(child: TextField(
                        controller: confirmPassController,
                        decoration: const InputDecoration(
                            hintText: "ConfirmPassword",
                            border: InputBorder.none
                        ),
                      ))
                    ],
                  ),
                ),
              ),

              BlocBuilder<SignUpBloc, SignUpState>(
                builder: (context, state) {
                  print("checkbox");
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: CheckboxListTile(
                      title: Text('Accept Terms and Conditions'),
                      value: state is SignupCheck ? state.check : false,
                      onChanged: (value) {
                        print("checkBox is selected");
                        print(value);
                      signUpBloc.add(SignCheckEvent(check: value!));
                      },
                    ),
                  );
                },
              ),

              ElevatedButton(
                  onPressed: () {


                  }, child: Text("Sign Up"))


            ],
          ),
        ),
      ),
    );
  }
}
