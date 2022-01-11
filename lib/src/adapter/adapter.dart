// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:http/http.dart' as http;
import 'package:json_response/json_response.dart';

// Project imports:
import 'package:hyakunin_isshu/src/model/box.dart';
import 'package:hyakunin_isshu/src/model/card.dart';
import 'package:hyakunin_isshu/src/response/response.dart';
import 'package:hyakunin_isshu/src/response/status.dart';

class Adapter {
  Adapter.newInstance();

  Response convert({
    required http.Response response,
  }) {
    if (response.statusCode != 200) {
      return Response.from(
        status: Status.from(
          code: response.statusCode,
          reasonPhrase: response.reasonPhrase ?? '',
        ),
        headers: response.headers,
        box: Box.empty(),
      );
    }

    return Response.from(
      status: Status.from(
        code: response.statusCode,
        reasonPhrase: response.reasonPhrase ?? '',
      ),
      headers: response.headers,
      box: _buildBox(json: Json.from(response: response)),
    );
  }

  Box _buildBox({
    required Json json,
  }) =>
      Box.from(
        cards: _buildCards(
          jsonArray: json.getArray(key: 'cards'),
        ),
      );

  List<Card> _buildCards({
    required JsonArray jsonArray,
  }) {
    final cards = <Card>[];
    jsonArray.forEach((json) {
      cards.add(
        Card.from(
          id: json.getInt(key: 'id'),
          kami: json.getString(key: 'kami'),
          simo: json.getString(key: 'simo'),
          kamiKana: json.getString(key: 'kamiKana'),
          simoKana: json.getString(key: 'simoKana'),
          author: json.getString(key: 'author'),
          authorKana: json.getString(key: 'authorKana'),
          pictureUrl: json.getString(key: 'image'),
        ),
      );
    });

    return cards;
  }
}
