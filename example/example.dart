// Copyright (c) 2022, Kato Shinya. All rights reserved.
// Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:hyakunin_isshu/hyakunin_isshu.dart';

void main() async {
  final response = await HyakuninIsshu.instance.cards();
  print(response);

  if (response.status.isNotOk) {
    // Do something when http status is not OK (200).
    return;
  }

  if (response.box.isEmpty) {
    // Also you can check status by box.
    return;
  }

  //! The resources of the Hyakunin Isshu are stored in GitHub repository,
  //! so it will always succeed unless GitHub's server goes down!

  for (final card in response.box.cards) {
    print(card);
  }
}
