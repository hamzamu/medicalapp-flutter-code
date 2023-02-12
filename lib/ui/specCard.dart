import 'package:flutter/material.dart';

class specCard extends StatelessWidget {
  // final Icon icon;
  final String title;
  final String image;
  const specCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
        child: Row(
          children: [
            Container(
              width: 20,
              child: Image.asset('assets/icons/$image.png'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              '$title',
              style: TextStyle(color: Colors.grey[800], fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
