import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:get/get.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Aplikasi', 
        style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue, Colors.red]),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            print('Ini adalah tombol menu');
          },
          icon: Icon(Icons.menu),
          color: Colors.white,
          ),
        actions: [
          IconButton(
            onPressed: () {
              print('ini setting');
            }, 
            
            icon: Icon(Icons.settings),
            color: Colors.white,
            ),
        IconButton(
          onPressed: () {
            print('ini pencarian');
          },
          icon: Icon(Icons.search),
          color: Colors.white
          ),
        ],

      ),
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExcnptem1pZHBpNjd6c21wZGFjejNyMDVxenltYzUwa20zN2VuMXpqaiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/IpKxfPy33hMRy/200.webp'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)),
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)),
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(Dashboard());
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.blueAccent,
                shadowColor: Colors.blueGrey,
                elevation: 10,
              ),
              child: Text('MASUK',
              style: TextStyle(color: Colors.white),
              )),
          ],
        ),
      )
    );
  }
}