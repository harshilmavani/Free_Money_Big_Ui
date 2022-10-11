import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final onTap;
  final text;

  const CommonButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      onPressed: onTap,
      child: Container(
        height: height * 0.070,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFB847C),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
