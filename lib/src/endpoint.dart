// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file

enum Endpoint {
  /// Github user content
  githubUserContent,
}

extension EndpointFeature on Endpoint {
  String get url {
    switch (this) {
      case Endpoint.githubUserContent:
        return 'raw.githubusercontent.com';
    }
  }
}
