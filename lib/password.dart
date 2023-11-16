import 'package:flutter/material.dart';

void main() {
  runApp(const ResetPage());
}

class ResetPage extends StatefulWidget {
  const ResetPage({super.key});

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 208, 162, 247),
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 229, 212, 255),
            height: 500,
            width: 350,
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      showCursor: true,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 241, 234, 255),
                          filled: true,
                          labelText: "Username",
                          labelStyle: const TextStyle(color: Colors.black),
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(color: Colors.red))),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      showCursor: true,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 241, 234, 255),
                          filled: true,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(color: Colors.red)),
                          labelText: "New Password",
                          labelStyle: const TextStyle(color: Colors.black),
                          border: const OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      showCursor: true,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 241, 234, 255),
                          filled: true,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(color: Colors.red)),
                          labelText: "Retype Password",
                          labelStyle: const TextStyle(color: Colors.black),
                          border: const OutlineInputBorder()),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 220, 191, 255))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
