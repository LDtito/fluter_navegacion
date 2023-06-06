import 'package:flutter/material.dart';
import 'package:rutas/src/pages/pagina_roja.dart';

class AzulPage extends StatefulWidget {
  const AzulPage({super.key});

   @override
  State<AzulPage> createState() => _AzulPageState();
}

class _AzulPageState extends State<AzulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Color(0xff1565c0), Color(0x00ef5350)],
            begin: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pantalla Azul',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Image.network(
                'https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_640.jpg', // Reemplaza "my_image.png" con la ruta de tu imagen
               
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Ir a la pantalla roja'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Cambia el color a verde
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RojoPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent, // Cambia el color a verde
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