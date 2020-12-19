import 'package:flutter/material.dart';

class NeuBoxWidget extends StatelessWidget {

  final Widget child;
  final EdgeInsetsGeometry padding;
  final BorderRadius borderRadius;

  const NeuBoxWidget({@required this.child, this.padding, this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding??const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.white),
        borderRadius: borderRadius??BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Color(0XFFA3B1C6), offset: Offset(9, 9), blurRadius: 16),
          BoxShadow(color: Colors.white, offset: Offset(-9, -9), blurRadius: 16,)
        ],
        color: Color(0XFFE0E5EC),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0XFFE0E5EC),
        ),
        child: child
      ),
    );
  }
}
