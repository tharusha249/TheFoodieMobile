import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

                    child: const Text('Login'),
                  ),
                  TextButton(onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup');
                  }, child: Text('Dont Have an Account? Sign Up',
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