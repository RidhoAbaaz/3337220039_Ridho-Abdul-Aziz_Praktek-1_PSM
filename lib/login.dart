import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  final _FormState = GlobalKey<FormState>();
  final textControler = TextEditingController();
  final _adreesState = GlobalKey<FormState>();
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
              key: _FormState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(image: AssetImage('images/kucing.png')),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: textControler,
                        validator: (value) {
                          if (value == '') {
                            return "nama tidak boleh kosong";
                          }
                        },
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
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.red))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 300,
                      child: TextFormField(
                        key: _adreesState,
                        validator: (value) {
                          if (value == '') {
                            return "addrees tidak boleh kosong";
                          }
                        },
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
                                  : Icons.visibility),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    color: Colors.transparent)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.red)),
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.black),
                            border: const OutlineInputBorder()),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 5, 0, 10),
                    child: TextButton(
                        onPressed: () {}, child: const Text('forgot password')),
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_FormState.currentState!.validate()) {
                              Navigator.pushNamed(context, '/login');
                            } else {
                              print("validation failed");
                            }
                          },
                          child: const Text('sign in')))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
