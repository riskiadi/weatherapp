import 'package:flutter/material.dart';

class NeuBoxWidget extends StatelessWidget {

  final child;

  const NeuBoxWidget({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
