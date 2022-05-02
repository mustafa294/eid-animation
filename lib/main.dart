import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.blue,
              Color.fromARGB(255, 2, 26, 47),
            ],
            center: Alignment.center,
            radius: 1.0,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.1,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image.asset('assets/eid_urdu.png', width: 400, height: 400, color: Colors.white,),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Lottie.network("https://assets6.lottiefiles.com/private_files/lf30_n0xnbjiz.json")),
              Align(
                alignment: Alignment.topLeft,
                child: Lottie.network("https://assets6.lottiefiles.com/private_files/lf30_n0xnbjiz.json")),
              Align(
                alignment: Alignment.topRight,
                child: Lottie.network("https://assets6.lottiefiles.com/private_files/lf30_n0xnbjiz.json")),
              Align(
                alignment: Alignment.center,
                child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_jEMHbp.json",
                
                
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_jEMHbp.json",
               
                
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Lottie.network("https://assets8.lottiefiles.com/packages/lf20_jEMHbp.json",
                
                
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedTextKit(animatedTexts: [
                        ColorizeAnimatedText(
                          'Eid',
                          textStyle: const TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, fontFamily: "Hidayarullah"),
                          textAlign: TextAlign.start,
                          colors: [Colors.white, Color.fromARGB(255, 210, 20, 6)],
                          
                        ),
                    ]),
                    AnimatedTextKit(animatedTexts: [
                        ColorizeAnimatedText(
                          'Mubarak',
                          textStyle: const TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, fontFamily: "Hidayarullah"),
                          textAlign: TextAlign.start,
                          colors: [Colors.white, Colors.red,],
                          
                          
                        ),
                    ]),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/chand.png', width: 150, height: 150,),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/box.png', width: 200, height: 200,),
                ),
              ),
              
            ],
          )
        ),
      )
    );
  }
}
