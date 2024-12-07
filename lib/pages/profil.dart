import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center( 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Image.network(
            'https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExcnptem1pZHBpNjd6c21wZGFjejNyMDVxenltYzUwa20zN2VuMXpqaiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/IpKxfPy33hMRy/200.webp',
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20), 
          Text(
            'NPM : 2210010091',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'NAMA : ELZA ILHAM ADI PRATAMA',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'KELAS : 5N REGULER PAGI BANJARMASIN',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

}