import 'package:flutter/material.dart';

class DialogContactBox extends StatelessWidget {
  const DialogContactBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Colors.brown),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFE8C6),
          borderRadius: BorderRadius.circular(50),
        ),
        height: 370,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Punto Miga',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Text(
              'Tel: 2944-245444',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Tel: 2944-474902',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Envios a Domicilio sin cargo!!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              'O podes retirarlos por Av.Pascotto 250',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Cerrar',
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
