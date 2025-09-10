import 'package:flutter/material.dart';

class CombosPage extends StatelessWidget {
  const CombosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color(0xffFFE8C6),
        appBar: AppBar(
          backgroundColor: Color(0xffFFE8C6),
          title: const Text('Sanguchitos Combos'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 3,
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
                leading: Image.asset('assets/images/changu_combo.png'),
                title: Text('Combo de Changuchitos ${index + 1}'),
                subtitle: Text('Descripción del Combo n° ${index + 1}'),
                trailing: Text('\$${(index + 1) * 50}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
