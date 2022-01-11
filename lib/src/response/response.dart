// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Package imports:
import 'package:collection/collection.dart';

// Project imports:
import 'package:hyakunin_isshu/src/model/box.dart';
import 'package:hyakunin_isshu/src/response/status.dart';

class Response {
  /// Returns the new instance of [Response] based on arguments.
  Response.from({
    required this.status,
    required this.headers,
    required this.box,
  });

  /// The http status
  final Status status;

  /// The http headers
  final Map<String, String> headers;

  /// The card box
  final Box box;

  @override
  String toString() =>
      'Response(status: $status, headers: $headers, box: $box)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is Response &&
        other.status == status &&
        mapEquals(other.headers, headers) &&
        other.box == box;
  }

  @override
  int get hashCode => status.hashCode ^ headers.hashCode ^ box.hashCode;
}
