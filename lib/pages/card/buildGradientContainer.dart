import 'package:flutter/material.dart';

// Extracted Gradient Container Widget
Widget buildGradientContainer({
  required Color startColor,
  required Color endColor,
  required String text,
  required String imagePath,
}) {
  return Container(
    width: 150, // Fixed width for each container
    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Add vertical spacing
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12), // Rounded corners
      gradient: LinearGradient(
        colors: [startColor, endColor],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
    ),
    child: Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          bottom: 60, // Adjust as needed
          right: 10,
          child: FloatingActionButton(
            onPressed: () {
              // Add your onPressed action here
            },
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.add,
              color: startColor, // Match the starting gradient color
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          right: 10,
          child: Image.asset(
            imagePath,
            height: 50, // Adjust the size of the image
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}

// Extracted Horizontal Scroll View Widget
class GradientContainerScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // Adjust the height as needed
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildGradientContainer(
              startColor: Color(0xFFcb7bf7),
              endColor: Color(0xFF79b2f4),
              text: 'Add prepaid meter',
              imagePath: 'images/metal.png',
            ),
            buildGradientContainer(
              startColor: Color(0xFFf7e4dd),
              endColor: Color(0xFFf3f1f2),
              text: 'Add prepaid meter',
              imagePath: 'images/metal.png',
            ),
            buildGradientContainer(
              startColor: Color(0xFFda94db),
              endColor: Color(0xFFadcdfc),
              text: 'Add prepaid meter',
              imagePath: 'images/metal.png',
            ),
          ],
        ),
      ),
    );
  }
}
