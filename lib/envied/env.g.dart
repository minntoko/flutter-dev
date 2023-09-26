// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeypass1 = [
    1380675904,
    1250756103,
    585237641,
    274352817,
    463578319
  ];
  static const List<int> _envieddatapass1 = [
    1380663689,
    1250768622,
    585249985,
    274364979,
    463574108
  ];
  static final String pass1 = String.fromCharCodes(
    List.generate(_envieddatapass1.length, (i) => i, growable: false)
        .map((i) => _envieddatapass1[i] ^ _enviedkeypass1[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeypass2 = [
    1080584940,
    2473887249,
    2411035989,
    1381554242,
    1841163223
  ];
  static const List<int> _envieddatapass2 = [
    1080580611,
    2473899746,
    2411023745,
    1381558462,
    1841159022
  ];
  static final String pass2 = String.fromCharCodes(
    List.generate(_envieddatapass2.length, (i) => i, growable: false)
        .map((i) => _envieddatapass2[i] ^ _enviedkeypass2[i])
        .toList(growable: false),
  );
}
