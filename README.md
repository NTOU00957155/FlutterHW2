# 六四事件互動式 About App 🇨🇳🕊

本 Flutter App 以 1989 年「六四天安門事件」為主題，透過互動式主題選單與詳盡頁面，呈現事件的始末與歷史意義。

---

## 📱 App 預覽

| 主題列表 | 事件內容 |
|----------|----------|
| ![menu](assets/screens/menu.png) | ![detail](assets/screens/detail.png) |

---

## 🔍 功能特色

- 🎯 主題導覽：可點選主題（例如事件起因、學生訴求等）進入詳盡頁面。
- 📖 詳細內容：每個主題包含圖片與多段段落，支援上下捲動閱讀。
- 📦 善用 Flutter Widget：符合 UI 規範，包含 `Text`、`Image`、`Icon`、`Column`、`Row`、`Color`、`Stack`、`SingleChildScrollView` 等。
- 📱 支援 Android/iOS 平台（使用 Flutter 製作）。

---

## 🛠 技術說明

- **Flutter SDK**：v3+
- **主要元件：**
  - `Text`：呈現主題與段落內容
  - `Image.asset`：顯示每個主題的歷史圖片
  - `Icon`：主題導覽圖示
  - `Column` / `Row`：內容排列
  - `Stack`：背景圖片與文字疊加
  - `SingleChildScrollView`：支持捲動內容
  - `Color`：主題視覺強化
- **畫面架構**：
  - `MainPage`：六大主題入口
  - `TopicDetailPage`：點擊主題後跳轉，顯示詳細介紹與圖片

---

## 📂 資料目錄結構

assets/
images/
background.png
...
screens/
menu.png
detail.png
lib/
main.dart
topic_data.dart
widgets/
topic_item.dart
topic_detail.dart


---

## 📚 主題介紹

| 主題 | 說明 |
|------|------|
| 事件起因 | 政治改革與社會矛盾背景。 |
| 學生訴求 | 民主、反腐與新聞自由。 |
| 絕食集會 | 學生在天安門廣場展開絕食抗議。 |
| 軍隊屠殺 | 6 月 3–4 日夜間解放軍武力鎮壓。 |
| 當代影響 | 六四在中國仍屬敏感話題、影響世代。 |

---

## 🤖 AI 與平台說明

- 本專案由 [ChatGPT](https://chat.openai.com) 協助開發 UI 架構與 Flutter 實作建議。
- 使用 [FlutLab.io](https://flutlab.io) 平台進行 Flutter 線上開發與預覽。

---

## 📜 版權聲明

- 所有圖片僅用於教育用途，若有侵權請來信告知移除。
- 本 App 目的在於歷史教育與言論自由探討，無政治立場。

---

## 📦 安裝方式

```bash
git clone https://github.com/your-username/tiananmen_about_app.git
cd tiananmen_about_app
flutter pub get
flutter run
