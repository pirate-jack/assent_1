class Wordmodel {
  int? word_id;
  String word;
  int createAt;

  Wordmodel({this.word_id, required this.word, required this.createAt});

  Map<String, dynamic> toMap() {
    return {'w_id': word_id, 'word': word, 'createAt': createAt};
  }

  factory Wordmodel.fromMap(Map<String, dynamic> map) {
    return Wordmodel(
        word_id: map['w_id'], word: map['word'], createAt: map['createAt']);
  }
}
