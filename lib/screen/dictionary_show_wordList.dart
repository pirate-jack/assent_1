import 'package:assent_1/model/word_model.dart';
import 'package:flutter/material.dart';

class ShowWordList extends StatefulWidget {
  const ShowWordList({super.key});

  @override
  State<ShowWordList> createState() => _Show_wordListState();
}

class _Show_wordListState extends State<ShowWordList> {

  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text('All Words'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: null,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            color: Colors.blue,
                          )),
                      IconButton(
                          onPressed: () {

                          },
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.red,
                          )),
                    ],
                  ),
                  Text('word',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
