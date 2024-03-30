import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController pageController;

  int currentPage = 500; // 중간값으로 설정하여 무한 스크롤 가능하도록 함

  @override
  void initState() {
    super.initState();

    pageController = PageController(
      initialPage: currentPage,
      viewportFraction: 1.0,
    );

    Timer.periodic(
      Duration(seconds: 3),
          (timer) {
        if (pageController.hasClients) {
          currentPage++; // 다음 페이지로 이동
          pageController.animateToPage(
            currentPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: 10000, // 충분히 큰 값을 설정하여 무한 스크롤 가능하도록 함
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            'asset/img/image_${index % 5 + 1}.jpeg', // 페이지 번호를 사진 인덱스에 맞게 계산
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
