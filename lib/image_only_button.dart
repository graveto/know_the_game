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
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 100,
            width: width,
            child: InkWell(
              onTap: onPressed,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
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