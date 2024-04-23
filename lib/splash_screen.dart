import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/porfolio.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 1), () {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const Portfolio(),

  ));
    }
    );
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.lime

        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
               Icons.edit,
              size: 80,
              color: Colors.black,
            ),
        SizedBox(height: 20,),
            Text(
              'Easy Khata',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
                fontSize: 50
              ),
            ),
            Text(
              'Apka Kam Ab Asan',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 20
              ),
            )
          ],
        ),
      ),


    );
  }
}
