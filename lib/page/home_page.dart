import 'package:faceid_app/main.dart';
import 'package:faceid_app/page/face_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Autenticado',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 48),
                buildLogoutButton(context)
              ],
            ),
          ),
        ),
      );

  Widget buildLogoutButton(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
        ),
        child: const Text(
          'Cerrar sesión',
          style: TextStyle(fontSize: 20),
        ),
        onPressed: () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => FacePage()),
        ),
      );
}
