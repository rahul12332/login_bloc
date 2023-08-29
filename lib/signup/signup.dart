import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameCotroller = TextEditingController();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      controller: confirmPassController,
                      decoration: const InputDecoration(
                          hintText: "E-mail",
                          border: InputBorder.none
                      ),
                    ))
                  ],
                ),
              ),
            ),

            ElevatedButton(onPressed: (){}, child: Text("Sign Up"))


          ],
        ),
      ),
    );
  }
}
