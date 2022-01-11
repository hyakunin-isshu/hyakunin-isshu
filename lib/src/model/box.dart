// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file

// Package imports:
import 'package:collection/collection.dart';

// Project imports:
import 'package:hyakunin_isshu/src/model/card.dart';

class Box {
  /// Returns the new instance of [Box] based on arguments.
  Box.from({
    required this.cards,
  });

  /// Returns the empty box
  factory Box.empty() => Box.from(cards: []);

  /// The cards
  final List<Card> cards;

  /// Returns true if this box is empty, otherwise false.
  bool get isEmpty => cards.isEmpty;

  /// Returns true if this box is not empty, otherwise false.
  bool get isNotEmpty => !isEmpty;

  @override
  String toString() => 'Box(cards: $cards)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Box && listEquals(other.cards, cards);
  }

  @override
  int get hashCode => cards.hashCode;
}
