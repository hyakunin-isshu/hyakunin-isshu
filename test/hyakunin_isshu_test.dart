// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:test/test.dart';

// Project imports:
import 'package:hyakunin_isshu/hyakunin_isshu.dart';

void main() {
  test('', () async {
    final api = HyakuninIsshu.instance;

    final response = await api.cards();
    expect(response.status.code, 200);
    expect(response.box.isNotEmpty, true);
    expect(response.box.isEmpty, false);

    for (final card in response.box.cards) {
      expect(0 < card.id && card.id <= 100, true);
      expect(card.kami.isNotEmpty, true);
      expect(card.simo.isNotEmpty, true);
      expect(card.kamiKana.isNotEmpty, true);
      expect(card.simoKana.isNotEmpty, true);
      expect(card.kamiRomaji.isNotEmpty, true);
      expect(card.simoRomaji.isNotEmpty, true);
      expect(card.author.isNotEmpty, true);
      expect(card.authorKana.isNotEmpty, true);
      expect(card.pictureUrl.isNotEmpty, true);
    }
  });
}
