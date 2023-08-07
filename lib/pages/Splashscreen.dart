import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_app/pages/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_SplashScreen) => LoginPage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF004D40), Color(0xFF81C784)],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.abc,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              "E-TRACK",
              style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
