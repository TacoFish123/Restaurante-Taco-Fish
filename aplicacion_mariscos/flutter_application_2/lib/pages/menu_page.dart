// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MENU',
                style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Aguachile',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/aguachile.jpg',
                width: 120,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Caldo de camarón',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/caldocamaron.jpg',
                width: 120,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Deditos de pescado',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/deditos.jpg',
                width: 120,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Hamburguesa',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/Hamburguesa.jpg',
                width: 120,
              ),
              SizedBox(
                height: 15,
              ),
              Botones(),
            ]),
      ),
          
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
            onPressed: () {},
            // ignore: prefer_const_constructors
            child: Text(
              'Ordenar',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 0, 3, 10)),
            ),
          ),
        ),
        SizedBox(
          height: 25,
          width: double.infinity,
        ),
      ],
    );
  }
}
