import 'package:changuchito/widgets/custom_appbar.dart';
import 'package:changuchito/widgets/custom_bottom_options.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.55,
            color: Colors.amber[100],
            child: Image.asset('assets/images/fondo.png', fit: BoxFit.fitWidth),
          ),
          CustomBottomOptions(),
        ],
      ),
    );
  }
}
