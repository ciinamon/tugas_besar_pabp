part of '_index.dart';

class Vocab {
  int no;
  String word;
  String pos;
  String translate;
  Vocab({
    this.no = 0,
    this.word = '',
    this.pos = '',
    this.translate = '',
  });

  Vocab copyWith({
    int? no,
    String? word,
    String? pos,
    String? translate,
  }) {
    return Vocab(
      no: no ?? this.no,
      word: word ?? this.word,
      pos: pos ?? this.pos,
      translate: translate ?? this.translate,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'no': no});
    result.addAll({'word': word});
    result.addAll({'pos': pos});
    result.addAll({'translate': translate});

    return result;
  }

  factory Vocab.fromMap(Map<String, dynamic> map) {
    return Vocab(
      no: map['no']?.toInt() ?? 0,
      word: map['word'] ?? '',
      pos: map['pos'] ?? '',
      translate: map['translate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Vocab.fromJson(String source) => Vocab.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vocab(no: $no, word: $word, pos: $pos, translate: $translate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vocab && other.no == no && other.word == word && other.pos == pos && other.translate == translate;
  }

  @override
  int get hashCode {
    return no.hashCode ^ word.hashCode ^ pos.hashCode ^ translate.hashCode;
  }
}
