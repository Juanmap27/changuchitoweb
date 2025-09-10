import 'package:flutter/material.dart';

class CustomHomeOptions extends StatelessWidget {
  final String title;
  final String imageName;
  final IconData icon;
  final Function()? onTap;

  const CustomHomeOptions({
    super.key,
    required this.title,
    required this.icon,
    required this.imageName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: 200,
        decoration: BoxDecoration(
          color: const Color(0xffFFE8C6),
          borderRadius: BorderRadius.circular(20),
          border: BoxBorder.all(color: Colors.brown.shade200, width: 3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Image.asset(imageName, fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
