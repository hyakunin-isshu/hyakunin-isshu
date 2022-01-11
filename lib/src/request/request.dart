// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:http/http.dart' as http;

// Project imports:
import 'package:hyakunin_isshu/src/adapter/adapter.dart';
import 'package:hyakunin_isshu/src/endpoint.dart';
import 'package:hyakunin_isshu/src/resource.dart';
import 'package:hyakunin_isshu/src/response/response.dart';

class Request {
  /// The url of endpoint
  static final _endpoint = Endpoint.githubUserContent;

  /// The adapter
  static final _adapter = Adapter.newInstance();

  /// The resource
  static final _resource = Resource.cards;

  Future<Response> get() async => _adapter.convert(
        response: await http.get(
          Uri(
            scheme: 'https',
            host: _endpoint.url,
            path: _resource.url,
          ),
        ),
      );
}
