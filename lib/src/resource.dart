// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

enum Resource {
  /// Cards
  cards,
}

extension ResourceFeature on Resource {
  String get url {
    switch (this) {
      case Resource.cards:
        return '/hyakunin-isshu/resource/main/src/resource.json';
    }
  }
}
