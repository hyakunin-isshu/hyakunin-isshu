// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file

// Project imports:
import 'package:hyakunin_isshu/src/model/box_impl.dart';
import 'package:hyakunin_isshu/src/model/card.dart';

abstract class Box {
  /// Returns the new instance of [Box] based on arguments.
  factory Box.from({
    required List<Card> cards,
  }) =>
      BoxImpl.from(cards: cards);

  /// Returns the empty box
  factory Box.empty() => BoxImpl.from(cards: []);

  /// Returns the cards.
  List<Card> get cards;

  /// Returns card linked to [id], otherwise null.
  Card? findById({required int id});

  /// Returns card linked to kami [value], otherwise null.
  Card? findByKami({required String value});

  /// Returns card linked to simo [value], otherwise null.
  Card? findBySimo({required String value});

  /// Returns card linked to kami kana [value], otherwise null.
  Card? findByKamiKana({required String value});

  /// Returns card linked to simo kana [value], otherwise null.
  Card? findBySimoKana({required String value});

  /// Returns card linked to author [value], otherwise null.
  Card? findByAuthor({required String value});

  /// Returns card linked to author kana [value], otherwise null.
  Card? findByAuthorKana({required String value});

  /// Returns cards list linked to kami [value], otherwise empty.
  List<Card> findAllByKami({required String value});

  /// Returns cards list linked to simo [value], otherwise empty.
  List<Card> findAllBySimo({required String value});

  /// Returns cards list linked to kami kana [value], otherwise empty.
  List<Card> findAllByKamiKana({required String value});

  /// Returns cards list linked to simo kana [value], otherwise empty.
  List<Card> findAllBySimoKana({required String value});

  /// Returns cards list linked to author [value], otherwise empty.
  List<Card> findAllByAuthor({required String value});

  /// Returns cards list linked to author kana [value], otherwise empty.
  List<Card> findAllByAuthorKana({required String value});

  /// Returns true if this box is empty, otherwise false.
  bool get isEmpty;

  /// Returns true if this box is not empty, otherwise false.
  bool get isNotEmpty;
}
