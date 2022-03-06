import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class GlowingActionButton extends StatelessWidget {
  const GlowingActionButton({
    Key? key,
    required this.color,
    required this.icon,
    this.size = 54,
    required this.onPressed,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipOval(
          child: Material(
            color: Colors.black,
            child: InkWell(
              splashColor: Colors.white12,
              onTap: onPressed,
              child: SizedBox(
                width: size,
                height: size,
                child: const Icon(
                  FontAwesomeIcons.lemon,
                  size: 26,
                  color: Colors.limeAccent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
