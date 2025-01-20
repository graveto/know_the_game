import 'package:flutter/material.dart';

class ImageOnlyButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;
  final double width;

  const ImageOnlyButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          height: 150,
          width: width,
          child: AspectRatio(
            aspectRatio: 1,
            child: InkWell(
              onTap: onPressed,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Ink.image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                  width: width,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}