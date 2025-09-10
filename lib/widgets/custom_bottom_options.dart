import 'package:changuchito/widgets/custom_home_options.dart';
import 'package:flutter/material.dart';

class CustomBottomOptions extends StatelessWidget {
  const CustomBottomOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Color(0xffFFE8C6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomHomeOptions(
              icon: Icons.fastfood_outlined,
              title: "CLASICOS",
              imageName: 'assets/images/changu_clasico.png',
              onTap: () => Navigator.pushNamed(context, '/clasicos'),
            ),
            CustomHomeOptions(
              icon: Icons.fastfood_outlined,
              title: "ESPECIALES",
              imageName: 'assets/images/changu_especial.png',
              onTap: () => Navigator.pushNamed(context, '/especiales'),
            ),
            CustomHomeOptions(
              icon: Icons.fastfood_outlined,
              title: "COMBOS",
              imageName: 'assets/images/changu_combo.png',
              onTap: () => Navigator.pushNamed(context, '/combos'),
            ),
          ],
        ),
      ),
    );
  }
}
