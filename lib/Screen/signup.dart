import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Image(image: AssetImage('assets/foodie_logo.png'),
                  width: 150, height: 100,
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },

                    child: const Text('Signup'),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  }, child: Text('Already Have an Account? Login',
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
                  
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}