import 'package:assent_1/components/logo.dart';
import 'package:assent_1/screen/add_new_word.dart';
import 'package:assent_1/screen/dictionary_show_wordList.dart';
import 'package:assent_1/widget/text_widget/List_tile.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade500,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Logo(
                logoSize: 2,
                logoFontSize: 18,
              ),
              SizedBox(
                height: 50,
              ),
              list_tile(
                leadingIcon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                titelText: 'Add new word',
                callback:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddWord(),));
                },
              ),
              SizedBox(
                height: 20,
              ),
              list_tile(
                leadingIcon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                titelText: 'Dictionary',
                callback:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShowWordList(),));
                },
              ),
              SizedBox(
                height: 20,
              ),
              list_tile(
                leadingIcon: Icon(
                  Icons.timer_outlined,
                  color: Colors.white,
                ),
                titelText: 'Start test',
                callback:() {

                },
              ),
              SizedBox(
                height: 20,
              ),
              list_tile(
                leadingIcon: Icon(
                  Icons.volume_up_outlined,
                  color: Colors.white,
                ),
                titelText: 'Speaker',
                callback:() {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
