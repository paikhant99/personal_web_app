import 'package:flutter/material.dart';
import 'package:my_portfolios/ui/customs/custom_style.dart';
import 'package:my_portfolios/ui/customs/custom_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Greetings, I'm Pai,",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'AI / Software Engineer',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Are you Seeking a hand for your business?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                    child: Image.asset(
                  'assets/images/profile.png',
                  width: 300,
                  height: 300,
                )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      style: greenElevatedButtonStyle,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const ContactMeDialog());
                      },
                      child: const Text("Let's Talk")),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
