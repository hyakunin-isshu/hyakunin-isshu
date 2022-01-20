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
  findById({required int id}) {
    for (final card in cards) {
      if (card.id == id) {
        return card;
      }
    }

    return null;
  }

  @override
  findByKami({required String value}) {
    for (final card in cards) {
      if (card.kami == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findBySimo({required String value}) {
    for (final card in cards) {
      if (card.simo == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findByKamiKana({required String value}) {
    for (final card in cards) {
      if (card.kamiKana == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findBySimoKana({required String value}) {
    for (final card in cards) {
      if (card.simoKana == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findByKamiRomaji({required String value}) {
    for (final card in cards) {
      if (card.kamiRomaji == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findBySimoRomaji({required String value}) {
    for (final card in cards) {
      if (card.simoRomaji == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findByAuthor({required String value}) {
    for (final card in cards) {
      if (card.author == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findByAuthorKana({required String value}) {
    for (final card in cards) {
      if (card.authorKana == value) {
        return card;
      }
    }

    return null;
  }

  @override
  findAllByKami({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.kami == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllBySimo({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.simo == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllByKamiKana({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.kamiKana == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllBySimoKana({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.simoKana == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllByKamiRomaji({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.kamiRomaji == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllBySimoRomaji({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.simoRomaji == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllByAuthor({required String value}) {
    final foundCards = <Card>[];
    for (final card in cards) {
      if (card.author == value) {
        foundCards.add(card);
      }
    }

    return foundCards;
  }

  @override
  findAllByAuthorKana({required String value}) {
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
