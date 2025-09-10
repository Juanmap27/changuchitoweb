import 'package:flutter/material.dart';

class ClasicosPage extends StatelessWidget {
  const ClasicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color(0xffFFE8C6),
        appBar: AppBar(
          backgroundColor: Color(0xffFFE8C6),
          title: const Text('Sanguchitos Clásicos'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 100.0,
                vertical: 12.0,
              ),
              child: ListTile(
                tileColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 26.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Image.asset('assets/images/changu_clasico.png'),
                title: Text('Sanguchito Clásico ${index + 1}'),
                subtitle: Text(
                  'Descripción del Sanguchito clásico ${index + 1}',
                ),
                trailing: Text('\$${(index + 1) * 10}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
