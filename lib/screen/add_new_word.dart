import 'package:assent_1/database/db_helper.dart';
import 'package:assent_1/model/meaning_model.dart';
import 'package:assent_1/model/word_model.dart';
import 'package:flutter/material.dart';

class AddWord extends StatefulWidget {
  Wordmodel? wordmodel;

  AddWord({this.wordmodel});

  @override
  State<AddWord> createState() => _AddWordState();
}

class _AddWordState extends State<AddWord> {

  @override
  List<TextEditingController> listController = [TextEditingController()];

  late String word;
  List<String> meaning_list = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text('Add Word'),
        backgroundColor: Colors.blue.shade500,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter the word',
                    labelText: 'Enter the word',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onChanged: (value) {
                    word = value;
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: listController.length,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Option ${index + 1}'),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                controller: listController[index],
                                decoration: InputDecoration(
                                  hintText: 'Add meaning',
                                  labelText: 'Add meaning',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onChanged: (value) {

                                },
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {

                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.brown,
                            ))
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: 12,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      listController.add(TextEditingController());
                    });
                  },
                  child: Text('Add Option +'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {

                        Navigator.pop(context);
                      },
                      child: Text('Submit'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
