import 'package:flutter/material.dart';

class LineButton extends StatelessWidget {

  final String title;

  final void Function() onPressed;

  final double height;

  const LineButton({Key? key, required this.title, required this.onPressed, this.height = 44.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  const Size(double.infinity, 43),
                ),
              ),
              child: Text(
                title,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.black26,
          )
        ],
      ),
    );
  }

}