// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeypass1 = [
    307155591,
    199882903,
    3708954175,
    3906034056,
    1186026330
  ];
  static const List<int> _envieddatapass1 = [
    307159630,
    199870590,
    3708950135,
    3906038026,
    1186030537
  ];
  static final String pass1 = String.fromCharCodes(
    List.generate(_envieddatapass1.length, (i) => i, growable: false)
        .map((i) => _envieddatapass1[i] ^ _enviedkeypass1[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeypass2 = [
    3267210898,
    440323459,
    3710556637,
    1430764960,
    1996887530
  ];
  static const List<int> _envieddatapass2 = [
    3267206781,
    440335728,
    3710560521,
    1430752604,
    1996891475
  ];
  static final String pass2 = String.fromCharCodes(
    List.generate(_envieddatapass2.length, (i) => i, growable: false)
        .map((i) => _envieddatapass2[i] ^ _enviedkeypass2[i])
        .toList(growable: false),
  );
}
