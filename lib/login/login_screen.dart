import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../signup/signup.dart';
import 'login_bloc/loginbloc_bloc.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  LoginblocBloc bloc = LoginblocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => bloc,
        child: Container(
          child: BlocConsumer<LoginblocBloc, LoginblocInitial>(
            listener: (context, state) {
              print('Status: ${state.status}');
              if(state.status==Status.loading){
                EasyLoading.show();
              }
              if(state.status == Status.success){
                EasyLoading.dismiss();
                EasyLoading.showSuccess("Login Successfully");
              }
              if(state.status==Status.failed){
                EasyLoading.dismiss();
                EasyLoading.showError("login failed");
              }
            },
            builder: (context, state) {
              return Scaffold(
                body: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                          padding: const EdgeInsets.symmetric(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: ElevatedButton(
                              style: ButtonStyle(

                              ),
                              onPressed: () {
                                bloc.add(LoginEvent(email: emailController.text, password: passwordController.text));
                              },
                              child: Text("Login")),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Row(
                            children: [
                              Text("I have not an account?"),
                              TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));

                              }, child: Text("SignUp"))
                            ],
                          )
                        )
                      ],
                    )),
              );
            },
          ),
        ),
      );
  }
}
