import 'package:flutter/material.dart';

class VerdePage extends StatelessWidget {
  const VerdePage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color.fromRGBO(0, 175, 80, 1), Color(0x00ef5350)],
            begin: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pantalla Verde'),
              Image.network(
                'https://cdn.pixabay.com/photo/2022/10/17/15/02/photography-7527978_640.jpg', // Reemplaza "my_image.png" con la ruta de tu imagen
              ),
              SizedBox(height: 20), // Espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Cambia el color a verde
                ),
                child: Text('Regresar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}