// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/login_page.dart';

class PortadaPage extends StatefulWidget {
  const PortadaPage({super.key});

  @override
  State<PortadaPage> createState() => _PortadaPageState();
}

class _PortadaPageState extends State<PortadaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [Fondo(), Contenido()],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             SizedBox(
          height: 20,
          width: double.infinity,
        ),
            Text(
              'Mariscos & Mas',
              style: TextStyle(
                color: Colors.cyan,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
             SizedBox(
          height: 20,
        ),
            Image.asset('assets/tostada.jpg',
              width: 125,
            ),
             SizedBox(
          height: 20,
        ),
            Text(
              '✆ 634-24-36102',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
             SizedBox(
          height: 20,
        ),
            Text(
              '¡Cerrado los martes!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
             SizedBox(
          height: 20,
        ),
            Text(
              'Horario: De 9:00 am a 5:00 pm',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
             SizedBox(
          height: 20,
        ),
            Botones(),
          ]),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 252, 252, 252),
        ],
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
      )),
    );
  }
}

class Botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            // ignore: prefer_const_constructors
            child: Text(
              'Ir a Login',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 0, 3, 10)),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
          width: double.infinity,
        ),
      ],
    );
  }
}
