import 'package:flutter/material.dart';

void main() {
  runApp(const FacilitatorModule());
}

class FacilitatorModule extends StatelessWidget {
  const FacilitatorModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/404.gif'), // Replace with your local GIF path
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
