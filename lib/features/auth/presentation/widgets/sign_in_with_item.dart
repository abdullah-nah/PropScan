import 'package:flutter/material.dart';

class SignInWithItem extends StatelessWidget {
  final String image;
  final double size;
  final void Function() onTap;
  const SignInWithItem({
    super.key,
    required this.image,
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: size,
        backgroundColor: Colors.transparent,
        child: Image.asset(image),
      ),
    );
  }
}
