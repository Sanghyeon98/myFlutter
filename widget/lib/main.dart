import 'package:flutter/material.dart';

void main() {
  runApp(const FlexibleExample());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 텍스트 관련 위젯
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Text(
              '박상현 핸드폰이다~',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  // TextButton관련 코드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: Colors.blueAccent,
            ),
            child: Text(
                '텍스트버튼',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),

            ),
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  // OutlinedButton 코드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: OutlinedButton(
            onPressed: (){},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blueAccent,
            ),
            child: Text(
              '텍스트버튼',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),

            ),
          ),
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  // ElevatedButton 코드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blueAccent,
            ),
            child: Text(
              '엘레베이티드 버튼',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),

            ),
          ),
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  // IconButton 코드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.home,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  // GestureDetector 코드
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: (){
              print('on tap');
            },
            onDoubleTap: (){
              print('on double tap');
            },
            onLongPress: (){
              print('on long press');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              width: 100.0,
              height: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}
class FloatingActionButtonExample extends StatelessWidget {
  const FloatingActionButtonExample({super.key});

  //FloatingActionButton 코드 SizeBox
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed:(){},
            child: Text('클릭'),
          ),
        body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
              width: 14,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(
                14,
            ),
          ),
          height: 200.0,
          width: 200.0,
        ),
        ),
      ),
    );;
  }
}

class PaddingExample extends StatelessWidget {
  const PaddingExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
        child: Container(
          color: Colors.blue,
          child: Padding(
            padding:EdgeInsets.all(
              16,
            ),
            child: Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
      ),
    );
  }
}

class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: Container(
              color: Colors.blueAccent,
              height: 300,
              width: 300,
            ),
          ),
        ),
      ),
    );
  }
}

class RowWidgetExample extends StatelessWidget {
  const RowWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Row(
            //주축정렬 지정
            mainAxisAlignment: MainAxisAlignment.center,

            //반대축 정렬 지정
            crossAxisAlignment: CrossAxisAlignment.center,

            //넣고 싶은 위젯
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.red,
              ),

              const SizedBox(width: 12,),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.green,
              ),
              const SizedBox(width: 12,),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blueGrey,
              ),
            ],

          ),
        ),
      ),
    );
  }
}

class ColumnWidgetExample extends StatelessWidget {
  const ColumnWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Container(
                height: 50.0,
                width: 50.0,
                color:Colors.redAccent,
              ),

              const SizedBox(width: 12,),
              Container(
                height: 50.0,
                width: 50.0,
                color:Colors.greenAccent,
              ),

              const SizedBox(width: 12,),
              Container(
                height: 50.0,
                width: 50.0,
                color:Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Flexible(
              flex: 1,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.redAccent,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
