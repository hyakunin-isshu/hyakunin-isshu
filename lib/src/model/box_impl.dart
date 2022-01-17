// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file

// Project imports:
import 'package:hyakunin_isshu/src/model/box.dart';
import 'package:hyakunin_isshu/src/model/card.dart';

class BoxImpl implements Box {
  /// Returns the new instance of [BoxImpl] based on arguments.
  BoxImpl.from({
    required this.cards,
  });

  @override
  final List<Card> cards;

  @override
  Card? findById({required int id}) {
    for (final card in cards) {
      if (card.id == id) {
        return card;
      }
    }

    return null;
  }

  @override
  Card? findByKami({required String value}) {
    for (final card in cards) {
      if (card.kami == value) {
        return card;
      }
    }

    return null;
  }

  @override
  Card? findBySimo({required String value}) {
    for (final card in cards) {
      if (card.simo == value) {
        return card;
      }
    }

    return null;
  }

  @override
  Card? findByKamiKana({required String value}) {
    for (final card in cards) {
      if (card.kamiKana == value) {
        return card;
      }
    }

    return null;
  }

  @override
  Card? findBySimoKana({required String value}) {
    for (final card in cards) {
      if (card.simoKana == value) {
        return card;
      }
    }

    return null;
  }

  @override
  Card? findByAuthor({required String value}) {
    for (final card in cards) {
      if (card.author == value) {
        return card;
      }
    }

    return null;
  }

  @override
  Card? findByAuthorKana({required String value}) {
    for (final card in cards) {
      if (card.authorKana == value) {
        return card;
      }
    }

    return null;
  }

  @override
  List<Card> findAllByKami({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.kami == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  List<Card> findAllBySimo({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.simo == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  List<Card> findAllByKamiKana({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.kamiKana == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  List<Card> findAllBySimoKana({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.simoKana == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  List<Card> findAllByAuthor({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.author == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  List<Card> findAllByAuthorKana({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.authorKana == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  get isEmpty => cards.isEmpty;

  @override
  get isNotEmpty => !isEmpty;
}
