// ignore: duplicate_ignore
// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/pages/menu_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Fondo(), Contenido()],
      ),
    );
  }
}

class Contenido extends StatefulWidget {
  @override
  _ContenidoState createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              color: Colors.cyan,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Bienvenido a Mariscos & Mas',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Datos(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  final formKey = GlobalKey<FormState>();


  String? telefonoValidator({
      String? value,
     
    }){
    
      if(value!.isEmpty) {
        return 'Este campo es obligatorio';
      }
    
      if(value.length != 10){
        return 'Este campo es de 10 dígitos';
      
    }
    return null;
  }

    String? nombreValidator({
      String? value,
     
    }){
    
      if(value!.isEmpty) {
        return 'Este campo es obligatorio';
      }
    
      if(value.length > 20){
        return 'Este campo solo admite 20 caracteres';
      
    }
    return null;
  }








  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              validator: (value) => nombreValidator(value: value),
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), 
                  hintText: 'Escriba su nombre'
              ),
              maxLength: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Numero',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              validator: (value) => telefonoValidator(value: value),
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                
                hintText: 'Telefono Aqui ',
              ),
              maxLength: 10,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
            ),
            SizedBox(
              height: 20,
            ),
            Botones(
              formKey: formKey,
            ),
          ],
        ),
      ),
    );
  }
}

class Fondo extends StatelessWidget {
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

  final GlobalKey<FormState> formKey;

  const Botones({super.key, required this.formKey});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if(formKey.currentState!.validate()){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => MenuPage(),
                  )
                );

              }
            },
            // ignore: prefer_const_constructors
            child: Text(
              'Login',
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
