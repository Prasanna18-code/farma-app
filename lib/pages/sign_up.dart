import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
        const SnackBar(content: Text('Created successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252634),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80.0,
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        "Create new Account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration:
                          _buildInputDecoration("Username", Icons.person),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _buildInputDecoration("Email", Icons.email),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.phone,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration:
                          _buildInputDecoration("Phone number", Icons.call),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: _buildInputDecoration(
                          "Password", Icons.lock_outline_sharp),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF15900)),
                            onPressed: _submitForm,
                            child: Text("Create",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)))),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginView()),
                        );
                      },
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: Color(0xFFF15900), fontSize: 20),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }

  InputDecoration _buildInputDecoration(String label, IconData suffixIcon) {
    return InputDecoration(
        fillColor: Color.fromARGB(255, 255, 255, 255),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x35949494))),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        filled: true,
        labelStyle: TextStyle(color: Color(0xFF949494)),
        labelText: label,
        suffixIcon: Icon(
          suffixIcon,
          color: Color.fromARGB(255, 70, 70, 70),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)));
  }
}
