import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: 'scripts/env/.env')
abstract class Env {
  // パスワード1
  @EnviedField(varName: 'PASSWORD_1', obfuscate: true)
  static final String pass1 = _Env.pass1;
  // パスワード2
  @EnviedField(varName: 'PASSWORD_2', obfuscate: true)
  static final String pass2 = _Env.pass2;
}
