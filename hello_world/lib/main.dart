import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:SizedBox(
          width: double.infinity,
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('박상현님'),
              Text('핸드폰입니다!'),
            ],
        ),
        ),
      ),
    )
  );
}

