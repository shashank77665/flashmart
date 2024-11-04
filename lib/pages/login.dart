import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 32, 44, 64),
            const Color.fromARGB(255, 2, 32, 58)
          ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'flashmart',
                    style: TextStyle(
                        fontSize: 30,
                        color: const Color.fromARGB(255, 239, 233, 211),
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Groceries',
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 146, 151, 151),
                        fontWeight: FontWeight.bold),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'delivered in',
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 146, 151, 151),
                        fontWeight: FontWeight.bold),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '10 minutes ',
                    style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 146, 151, 151),
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/logoGoogle.png',
                        height: 20,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Sign-in with Google',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  onPressed: () async {
                    // User? user = await signInWithGoogle();
                    // if (user != null) {
                    //   Navigator.pushReplacementNamed(
                    //       context, '/home');
                    //   print(
                    //       'Sign-In successful! Welcome, ${user.displayName}');
                    // } else {
                    //   print('Sign-In failed.');
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                'By continuing,you agree to our',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Terms of Use & Privacy Policy',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      )),
    );
  }
}
