import 'package:flutter/material.dart';

void main() {
  const app = MaterialApp(
    home: Home(),
  );
  runApp(app);
}

// 馬のモデルクラス
class Horse {
  final String name;
  final String iconUrl;
  Horse(this.name, this.iconUrl);
}

// カードにしたいモデルたち
final models = [
  Horse('ブラックダイヤモンド', 'horse1.png'),
  Horse('スターライト', 'horse2.png'),
  Horse('ゴールデンウィンド', 'horse3.png'),
  Horse('ファイアストライク', 'horse4.png'),
  Horse('サンダーランチョ', 'horse5.png'),
];

// 馬のカード Widget
class HorseCard extends StatelessWidget {
  const HorseCard({super.key, required this.model});

  final Horse model;

  @override
  Widget build(BuildContext context) {
    // 画像
    final img = SizedBox(
      height: 100,
      child: Image.asset('assets/images/${model.iconUrl}'),
    );

    // 名前
    final text = Text(
      model.name,
      style: const TextStyle(fontSize: 20),
    );

    final imgAndText = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [img, text],
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: imgAndText,
    );
  }
}

// モデル => ウィジェットに変換する関数
Widget modelToWidget(Horse model) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: HorseCard(
      model: model,
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // カルーセル
    final carousel = Container(
        height: 200,
        color: Colors.white,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.6),
          itemCount: models.length,
          itemBuilder: (c, i) => modelToWidget(models[i]),
        ));

    return Scaffold(
      appBar: AppBar(title: const Text('カルーセル編')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              '馬のカード一覧',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          carousel,
        ],
      )),
    );
  }
}
