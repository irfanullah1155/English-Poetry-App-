import 'package:flutter/material.dart';
class MainBoxContainer extends StatelessWidget {
  const MainBoxContainer({
    required this.title,
    required this.color,
    required this.onPressed,
    super.key,
  });
final String title;
final Color color;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin:const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20)
        ),
        child:  Center(child: Text(title,
          textAlign: TextAlign.center,
          style:const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        )),
      ),
    );
  }
}
