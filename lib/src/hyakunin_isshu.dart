// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file

// Project imports:
import 'package:hyakunin_isshu/src/hyakunin_isshu_impl.dart';
import 'package:hyakunin_isshu/src/response/response.dart';

abstract class HyakuninIsshu {
  /// Returns the singleton instance of [HyakuninIsshu].
  static HyakuninIsshu get instance => HyakuninIsshuImpl.instance;

  /// Returns a response containing a list of hyakunin isshu.
  Future<Response> cards();
}
