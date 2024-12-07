import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pages/calender.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profil.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _seletedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Profil(),
    Calender(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: 
                  LinearGradient(colors: [Colors.blue, Colors.red])
          ),
        ),
        leading: IconButton(
          onPressed: () { 
            print("ini adalah tombol menu");
          }, 
          icon: Icon(Icons.menu),
          color: Colors.white,
          ),
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: 'APAKAH ANDA INGIN KELUAR DARI APLIKASI?',
                content: Container(),
                textConfirm: 'Ya',
                textCancel: 'Tidak',
                onConfirm: () {
                  Get.offAll(Login());
                },
                onCancel: () {
                  Get.back();
                },
              );
            }, 
            icon: Icon(Icons.logout), 
            color: Colors.white,
            )
        ],
      ),
      body: _pages[_seletedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.red,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Kalender'),
      ]),
    );
  }
}