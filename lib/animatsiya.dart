import 'package:flutter/material.dart';
import 'package:project1/registr.dart';

class animatsiya extends StatefulWidget {
  const animatsiya({super.key});

  @override
  State<animatsiya> createState() => _animatsiyaState();
}

class _animatsiyaState extends State<animatsiya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              TextField(decoration: InputDecoration(labelText: "Email")),
              TextField(decoration: InputDecoration(labelText: "Password")),
              SizedBox(height: 15),
              Container(
                width: 550,
                height: 35,
                color: Colors.blue.shade800,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              return Registr();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sing Up',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
