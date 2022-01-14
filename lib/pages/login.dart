import 'package:flutter/material.dart';
import 'routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool buttonChanged = false;
  String name = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[500],
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg')),
            const SizedBox(height: 15.0),
            Text('Welcome $name',
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15.0),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Enter the username',
                          labelText: 'UserName:'),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the username';
                        }

                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Enter the password',
                          labelText: 'Password:'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        } else if (value.isNotEmpty && value.length < 6) {
                          return "Password must be at least 6 characters";
                        } else if (value.isNotEmpty && value.length > 12) {
                          return "Password must be less than 12 characters";
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 15.0),
                    Material(
                        borderRadius:
                            BorderRadius.circular(buttonChanged ? 50.0 : 10.0),
                        color: Colors.blue,
                        child: InkWell(
                          splashColor: Colors.grey[7],
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: buttonChanged ? 50 : 130,
                            height: 50,
                            alignment: Alignment.center,
                            child: buttonChanged
                                ? const Icon(Icons.done)
                                : const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                          ),
                        ))
                  ],
                ))
          ],
        ),
      ),
    );
  }

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonChanged = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, route.home);
      setState(() {
        buttonChanged = false;
      });
    } else {
      setState(() {
        buttonChanged = false;
      });
    }
  }
}
