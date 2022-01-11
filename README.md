![hyakunin_isshu_logo](https://user-images.githubusercontent.com/13072231/148918545-110c0dcc-6eb1-4d8e-9d80-8beaea57f53f.png)

[![pub package](https://img.shields.io/pub/v/hyakunin_isshu.svg)](https://pub.dev/packages/hyakunin_isshu)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. Introduction](#11-introduction)
    - [1.1.1. Install Library](#111-install-library)
    - [1.1.2. Import It](#112-import-it)
    - [1.1.3. Use HyakuninIsshu](#113-use-hyakuninisshu)
  - [1.2. License](#12-license)
  - [1.3. More Information](#13-more-information)

<!-- /TOC -->

# 1. About

`HyakuninIsshu` is an open-sourced Dart library.</br>
With `HyakuninIsshu`, you can easily use resources of Hyakun Inisshu on your application.

## 1.1. Introduction

### 1.1.1. Install Library

**_With Dart:_**

```terminal
 dart pub add hyakunin_isshu
```

**_With Flutter:_**

```terminal
 flutter pub add hyakunin_isshu
```

### 1.1.2. Import It

```dart
import 'package:hyakunin_isshu/hyakunin_isshu.dart';
```

### 1.1.3. Use HyakuninIsshu

```dart
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

  //! Well, the resources of the Hyakunin Isshu are stored in GitHub repository,
  //! so it will always succeed unless GitHub's server goes down!

  for (final card in response.box.cards) {
    print(card);
  }
}
```

## 1.2. License

```license
Copyright (c) 2022, Kato Shinya. All rights reserved.
Use of this source code is governed by a
BSD-style license that can be found in the LICENSE file.
```

## 1.3. More Information

`HyakuninIsshu` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/hyakunin-isshu/hyakunin-isshu/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/hyakunin_isshu/latest/hyakunin_isshu/hyakunin_isshu-library.html)
- [Release Note](https://github.com/hyakunin-isshu/hyakunin-isshu/releases)
- [Bug Report](https://github.com/hyakunin-isshu/hyakunin-isshu/issues)
