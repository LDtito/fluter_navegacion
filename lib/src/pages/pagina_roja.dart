import 'package:flutter/material.dart';
import 'package:rutas/src/pages/page_verde.dart';

class RojoPage extends StatelessWidget {
  const RojoPage({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xffFF1744), Color(0x00ef5350)],
            begin: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pantalla Roja'),
              Image.network(
                'https://cdn.pixabay.com/photo/2016/06/11/12/17/red-1450056_640.jpg', // Reemplaza "my_image.png" con la ruta de tu imagen
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Cambia el color a verde
                ),
                child: Text('Ir a la pantalla verde'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerdePage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),// Espacio entre los botones
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Cambia el color a verde
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