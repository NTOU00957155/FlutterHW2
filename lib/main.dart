import 'package:flutter/material.dart';

void main() {
  runApp(const TiananmenApp());
}

class TiananmenApp extends StatelessWidget {
  const TiananmenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '六四事件 About 頁面',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const AboutHomePage(),
    );
  }
}

class AboutHomePage extends StatelessWidget {
  const AboutHomePage({super.key});

  final List<_TopicItem> topics = const [
    _TopicItem(title: "事件起因", widget: CausePage()),
    _TopicItem(title: "學生訴求", widget: DemandsPage()),
    _TopicItem(title: "絕食集會", widget: HungerStrikePage()),
    _TopicItem(title: "軍隊屠殺", widget: MassacrePage()),
    _TopicItem(title: "現代影響", widget: LegacyPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("六四事件 About")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/tiananmen.jpg"),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "選擇一個主題了解更多六四事件的相關內容",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            Column(
              children: topics
                  .map((topic) => ListTile(
                        leading: const Icon(Icons.article),
                        title: Text(topic.title),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => topic.widget),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

class _TopicItem {
  final String title;
  final Widget widget;
  const _TopicItem({required this.title, required this.widget});
}

class CausePage extends StatelessWidget {
  const CausePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _AboutContentPage(
      title: "事件起因",
      imageAsset: "assets/images/cause.jpg",
      content: "1989年春，北京的學生發起遊行，原意是悼念胡耀邦逝世，"
          "進而演變為要求民主改革的抗議運動，觸發政府與學生間的對峙。"
          "1989年4月15日，中共中央前總書記胡耀邦病逝，因他曾主張改革與寬容對話，受到知識分子和學生愛戴。"
          "數以萬計的學生與市民自發前往天安門廣場悼念，逐漸轉化為要求政府改革與反貪腐的運動。"
          "當時中國正處於改革開放初期，經濟不平等與政治壓制並存，民眾積怨已久。"
          "胡耀邦的辭世成為導火線，引爆全國性要求政治改革與民主自由的浪潮。"
          "這是中國近代史上最大規模的學生運動之一，並迅速蔓延至全國多所大學與城市。",
    );
  }
}

class DemandsPage extends StatelessWidget {
  const DemandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _AboutContentPage(
      title: "學生訴求",
      imageAsset: "assets/images/demands.jpg",
      content: "學生們要求言論自由、新聞自由、反貪腐與民主改革，"
          "希望政府能回應民意，開放政治參與空間。"
          "學生們在廣場上組織抗議活動，提出七項訴求：新聞自由、言論自由、反貪腐、重新評價胡耀邦、民主選舉等。"
          "他們要求與政府對話，並以和平的方式推動政治體制改革。"
          "訴求不僅限於學生，也代表了當時廣泛市民的心聲，包括工人、知識分子與中產階級。"
          "學生還成立『北京高校學生自治聯合會』，以自主組織方式進行抗爭，堅持非暴力原則。"
          "隨著時間推移，學生的訴求變得更具象徵意義，成為全民爭取民主自由的象徵。",
    );
  }
}

class HungerStrikePage extends StatelessWidget {
  const HungerStrikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _AboutContentPage(
      title: "絕食集會",
      imageAsset: "assets/images/hunger.jpg",
      content: "5月13日起，數千名學生於天安門廣場進行絕食，"
          "吸引全國民眾關注，成為整場運動的高潮與轉捩點。"
          "為了喚起政府與社會關注，數千名學生於1989年5月13日發起絕食行動，地點就在天安門廣場。"
          "許多學生體力不支倒下，卻仍堅持訴求，場面感人動容，媒體與群眾反應熱烈。"
          "民眾開始湧入廣場支援學生，包括送水送飯，甚至自願加入行列。"
          "醫療隊與志願者也紛紛到場支援，顯示整個社會對於學生的認同與支持。"
          "這次絕食使運動達到高峰，亦讓政府感受到巨大的壓力與尷尬，局勢進入緊張階段。",
    );
  }
}

class MassacrePage extends StatelessWidget {
  const MassacrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _AboutContentPage(
      title: "軍隊屠殺",
      imageAsset: "assets/images/massacre.jpg",
      content: "1989年6月3日至4日，中共政府出動解放軍武力清場，"
          "造成無數平民與學生死傷，此事件震驚世界。"
          "1989年6月3日晚間至6月4日清晨，中共政府下令解放軍進入北京市區，進行『清場』行動。"
          "坦克車與全副武裝的士兵朝民眾與學生發動攻擊，造成大量死傷。"
          "根據不同資料來源，死亡人數估計從數百到數千不等，具體數據至今無法核實。"
          "當時有許多攝影師與記者記錄下事件，包括著名的『坦克人』畫面震驚全球。"
          "這場血腥鎮壓不僅摧毀了和平抗議，也震懾了整個中國社會，進入長期噤聲與封鎖。",
    );
  }
}

class LegacyPage extends StatelessWidget {
  const LegacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _AboutContentPage(
      title: "現代影響",
      imageAsset: "assets/images/legacy.jpg",
      content: "六四事件成為中國民主進程的重大歷史事件，"
          "在中國仍屬敏感禁忌，卻在全球留下深遠影響與紀念。"
          "六四事件至今仍在中國境內被全面封鎖與禁談，網路、書籍、媒體皆不得提及相關內容。"
          "但在香港(?)、台灣以及國際社會，每年仍有紀念活動與燭光晚會，悼念犧牲者。"
          "許多流亡海外的學生領袖仍持續推動中國民主運動與人權倡議。"
          "這場運動被視為中國現代史上最重要的民主抗爭之一，影響深遠。"
          "六四事件也提醒世人：言論自由、民主制度並非理所當然，需要每一代人努力捍衛。",
    );
  }
}

class _AboutContentPage extends StatelessWidget {
  final String title;
  final String imageAsset;
  final String content;

  const _AboutContentPage({
    required this.title,
    required this.imageAsset,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(imageAsset),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(content, style: const TextStyle(fontSize: 18)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
