import 'package:flutter/material.dart';
import 'package:indemandcaredemo/services/auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Indemand Care Employee Sign In'),
      ),
      body: Container (
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: const Text("Sign In With Username"),
          onPressed: () async {
            dynamic result = await _authService.signInAnonomous();
            if(result == null){
              print("Error Signing In");
            } else {
              print("Signed In");
              print(result);
            }
            }
            ),
      ), 
    );
  }
}