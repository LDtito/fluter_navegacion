import 'package:flutter/material.dart';
import 'package:rutas/src/pages/pagina_azul.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xff4CAF50), Color(0xffFFEB3B)],
              begin: Alignment.topCenter,
            ),
          ),
          child: Center(
            child: ElevatedButton(
              child: Text('Ir a la pantalla azul'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AzulPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}