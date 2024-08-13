class Meaning_model {
  String meaning;
  int? meaming_id;
  int? word_Fid;

  Meaning_model(
      {required this.meaning,
       this.meaming_id,
       this.word_Fid});

  Map<String, dynamic> toMap() {
    return { 'm_id': meaming_id,'meaning': meaning,'compare_id': word_Fid};
  }

  factory  Meaning_model.fromMap(Map<String, dynamic> map) {
    return Meaning_model(meaming_id: map['m_id'], meaning: map['meaning'],  word_Fid:map['compare_id']);
  }
}
