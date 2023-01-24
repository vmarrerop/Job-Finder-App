import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/img_main.jpg'),
          Column(
            children: [
              Text(
                'Job Hunting',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Made Easy',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          MaterialButton(
            color: Theme.of(context).primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {},
            elevation: 10,
            minWidth: 170,
            height: 50,
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.green, fontSize: 20),
            ),
          )
        ],
      ),
    ));
  }
}
