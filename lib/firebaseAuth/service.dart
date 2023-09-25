// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthService {
//   Future<void> signIn() async {
//     debugPrint('サービスクラスが動きました');
//     const clientId =
//         "228347042060-euv81tj6frec6kgptluih4863dh5agfn.apps.googleusercontent.com";

//     // アプリが知りたい情報
//     const scopes = [
//       'openid', // 他サービス連携用のID
//       'profile', // 住所や電話番号
//       'email', // メールアドレス
//     ];

//     // Googleでサインインの画面へ飛ばす
//     final request = GoogleSignIn(clientId: clientId, scopes: scopes);
//     final response = await request.signIn();

//     // 受け取ったデータの中からアクセストークンを取り出す
//     final authn = await response?.authentication;
//     final accessToken = authn?.accessToken;

//     // アクセストークンがnullだったら中止
//     if (accessToken == null) {
//       return;
//     }

//     // Firebaseにアクセストークンを送る
//     final oAuthCredential =
//         GoogleAuthProvider.credential(accessToken: accessToken);
//     final userCred =
//         await FirebaseAuth.instance.signInWithCredential(oAuthCredential);
//     // ID・トークンを見る
//     final idToken = await userCred.user?.getIdToken();
//     debugPrint(idToken);
//   }
// }
