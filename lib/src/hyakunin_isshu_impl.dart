// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Project imports:
import 'package:hyakunin_isshu/src/hyakunin_isshu.dart';
import 'package:hyakunin_isshu/src/request/request.dart';

class HyakuninIsshuImpl implements HyakuninIsshu {
  /// The internal constructor for singleton.
  HyakuninIsshuImpl._internal();

  /// Returns the singleton instance of [HyakuninIsshuImpl].
  static HyakuninIsshuImpl get instance => _singletonInstance;

  /// The singleton instance of [HyakuninIsshuImpl].
  static final _singletonInstance = HyakuninIsshuImpl._internal();

  @override
  cards() async => await Request().get();
}
