import 'package:flutter/material.dart';

class EspecialesPage extends StatelessWidget {
  const EspecialesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color(0xffFFE8C6),
        appBar: AppBar(
          backgroundColor: Color(0xffFFE8C6),
          title: const Text('Sanguchitos Especiales'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
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
                leading: Image.asset('assets/images/changu_especial.png'),
                title: Text('Changuchito Especial ${index + 1}'),
                subtitle: Text(
                  'Descripción del Changuchito Especial ${index + 1}',
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
