import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
        child: Image.asset(
          'assets/Account/Offer/offerimg.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
