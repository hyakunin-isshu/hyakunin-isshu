![hyakunin_isshu_logo](https://user-images.githubusercontent.com/13072231/148921690-0f0e9ec9-5b43-4ea0-8068-bbe20767e39b.png)

[![pub package](https://img.shields.io/pub/v/hyakunin_isshu.svg)](https://pub.dev/packages/hyakunin_isshu)
[![codecov](https://codecov.io/gh/hyakunin-isshu/hyakunin-isshu/branch/main/graph/badge.svg?token=1GHUFC19BR)](https://codecov.io/gh/hyakunin-isshu/hyakunin-isshu)
[![Analyzer](https://github.com/hyakunin-isshu/hyakunin-isshu/actions/workflows/analyzer.yml/badge.svg)](https://github.com/hyakunin-isshu/hyakunin-isshu/actions/workflows/analyzer.yml)
[![Test](https://github.com/hyakunin-isshu/hyakunin-isshu/actions/workflows/test.yml/badge.svg)](https://github.com/hyakunin-isshu/hyakunin-isshu/actions/workflows/test.yml)

<!-- TOC -->

- [1. About](#1-about)
  - [1.1. What Is Hyakunin Isshu?](#11-what-is-hyakunin-isshu)
  - [1.2. Introduction](#12-introduction)
    - [1.2.1. Install Library](#121-install-library)
    - [1.2.2. Import It](#122-import-it)
    - [1.2.3. Use HyakuninIsshu](#123-use-hyakuninisshu)
  - [1.3. License](#13-license)
  - [1.4. More Information](#14-more-information)

<!-- /TOC -->

# 1. About

`HyakuninIsshu` is an open-sourced Dart library.</br>
With `HyakuninIsshu`, you can easily use resources of Hyakunin Isshu on your application.

## 1.1. What Is Hyakunin Isshu?

`Hyakunin Isshu (百人一首)` is a classical Japanese anthology of one hundred Japanese **_waka_** by one hundred poets. Hyakunin isshu can be translated to **_"one hundred people, one poem each"_**; it can also refer to **_the card game of uta-garuta_**, which uses a deck composed of cards based on the Hyakunin Isshu.

The most famous and standard version was compiled by Fujiwara no Teika (1162–1241) while he lived in the Ogura district of Kyoto. It is therefore also known as **_Ogura Hyakunin Isshu (小倉百人一首)_**.

You can check more deitails [here](https://en.wikipedia.org/wiki/Ogura_Hyakunin_Isshu)!

## 1.2. Introduction

### 1.2.1. Install Library

**_With Dart:_**

```terminal
 dart pub add hyakunin_isshu
```

**_With Flutter:_**

```terminal
 flutter pub add hyakunin_isshu
```

### 1.2.2. Import It

```dart
import 'package:hyakunin_isshu/hyakunin_isshu.dart';
```

### 1.2.3. Use HyakuninIsshu

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

  //! The resources of the Hyakunin Isshu are stored in GitHub repository,
  //! so it will always succeed unless GitHub's server goes down!

  for (final card in response.box.cards) {
    print(card);
  }
}
```

## 1.3. License

```license
Copyright (c) 2022, Kato Shinya. All rights reserved.
Use of this source code is governed by a
BSD-style license that can be found in the LICENSE file.
```

## 1.4. More Information

`HyakuninIsshu` was designed and implemented by **_Kato Shinya_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/hyakunin-isshu/hyakunin-isshu/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/hyakunin_isshu/latest/hyakunin_isshu/hyakunin_isshu-library.html)
- [Release Note](https://github.com/hyakunin-isshu/hyakunin-isshu/releases)
- [Bug Report](https://github.com/hyakunin-isshu/hyakunin-isshu/issues)
