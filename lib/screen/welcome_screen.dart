import 'package:assent_1/screen/main_screen.dart';
import 'package:assent_1/widget/text_widget/display_titel_text.dart';
import 'package:flutter/material.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitelText(
              text: 'Welcome to',
              textColor: Colors.white,
              fontSize: 35,
            ),
            TitelText(
              text: 'Dictionary',
              textColor: Colors.white,
              fontSize: 35,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(),
            )),
        child: Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
