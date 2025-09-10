import 'package:changuchito/widgets/custom_appbar_button.dart';
import 'package:changuchito/widgets/dialog_contact_box.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFFE8C6),
      leading: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Image.asset('assets/images/pino.png'),
      ),
      title: Text(
        'Punto Miga',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      actions: [
        CustomAppbarButton(text: "Productos", onPressed: () {}),
        CustomAppbarButton(text: "Promos", onPressed: () {}),
        CustomAppbarButton(
          text: "Contacto",
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => DialogContactBox(),
            );
          },
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
        SizedBox(width: 20.0),
      ],
    );
  }
}
