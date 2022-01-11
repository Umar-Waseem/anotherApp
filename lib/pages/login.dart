import 'package:flutter/material.dart';
import 'routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonChanged = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[500],
      child: Column(
        children: [
          const CircleAvatar(backgroundImage: AssetImage('images/login.jpg')),
          const SizedBox(height: 15.0),
          const Text('Welcome',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15.0),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 32),
              child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter the username',
                          labelText: 'UserName:')),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Enter the password',
                          labelText: 'Password:')),
                  const SizedBox(height: 15.0),
                  InkWell(
                      onTap: () async {
                        setState(() {
                          buttonChanged = true;
                        });

                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, route.home);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: buttonChanged ? 50 : 150,
                        height: 50,
                        // allignment: Alignment.center,
                        child: buttonChanged
                            ? const Icon(Icons.done)
                            : const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
