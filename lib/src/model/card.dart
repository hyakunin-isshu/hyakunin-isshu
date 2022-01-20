// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class Card {
  /// Returns the new instance of [Card] based on arguments.
  Card.from({
    required this.id,
    required this.kami,
    required this.simo,
    required this.kamiKana,
    required this.simoKana,
    required this.kamiRomaji,
    required this.simoRomaji,
    required this.author,
    required this.authorKana,
    required this.pictureUrl,
  });

  /// The id
  final int id;

  /// The kami phrase
  final String kami;

  /// The simo phrase
  final String simo;

  /// The kami phrase in kana
  final String kamiKana;

  /// The simo phrase in kana
  final String simoKana;

  /// The kami phrase in romaji
  final String kamiRomaji;

  /// The simo phrase in romaji
  final String simoRomaji;

  /// The author
  final String author;

  /// The author in kana
  final String authorKana;

  /// The url to the image of this card
  final String pictureUrl;

  @override
  String toString() {
    return 'Card(id: $id, kami: $kami, simo: $simo, kamiKana: $kamiKana, simoKana: $simoKana, kamiRomaji: $kamiRomaji, simoRomaji: $simoRomaji, author: $author, authorKana: $authorKana, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Card &&
        other.id == id &&
        other.kami == kami &&
        other.simo == simo &&
        other.kamiKana == kamiKana &&
        other.simoKana == simoKana &&
        other.kamiRomaji == kamiRomaji &&
        other.simoRomaji == simoRomaji &&
        other.author == author &&
        other.authorKana == authorKana &&
        other.pictureUrl == pictureUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        kami.hashCode ^
        simo.hashCode ^
        kamiKana.hashCode ^
        simoKana.hashCode ^
        kamiRomaji.hashCode ^
        simoRomaji.hashCode ^
        author.hashCode ^
        authorKana.hashCode ^
        pictureUrl.hashCode;
  }
}
