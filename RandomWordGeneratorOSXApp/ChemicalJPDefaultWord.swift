//
//  ChemicalJPDefaultWord.swift
//  RandomWordGeneratorOSXApp
//
//  Created by 岡大輔 on 2016/01/03.
//  Copyright © 2016年 岡大輔. All rights reserved.
//

import Cocoa

class ChemicalJPDefaultWord: NSObject {
    
    func ReturnWordArray()->Array<String>
    {
        return ["オットー・シュトルツ", "ジャック・アダマール", "近東", "ピエール・ルネ・ドリーニュ", "微分方程式", "フュージョン (音楽)", "ミンコフスキー空間", "ダンス・ミュージック", "遠心力", "離散幾何学", "合同数", "チャクラバーラ法", "インド・ヨーロッパ語族の音韻法則", "オックスフォード英語辞典", "運動エネルギー", "自然公園", "約数", "ハミルトン力学", "暗号理論", "代数幾何学", "ABC予想", "編曲家", "ロバート・ラングランズ", "南イタリア", "神", "市場", "子音交替", "調律", "北アフリカ", "家政学", "文系と理系", "ブラジル音楽", "ユークリッド空間", "本", "宗教学", "声", "アレクサンドリア", "ウィクショナリー", "解析学", "学際", "美学", "地理空間情報", "商空間", "生態系", "エトムント・ランダウ", "政策学", "平面粒子運動力学", "土地利用", "相対速度", "基礎科学", "学習", "弦楽器", "フローの空間", "ベクトル空間", "数秘学", "伝道", "力", "制御理論", "リチャード・テイラー (数学者)", "欧文西洋音楽用語の一覧", "地球の構造", "アレクサンドリアのディオファントス", "レオナルド・フィボナッチ", "メロディ", "現象", "遠心力 (回転座標系)", "考古学", "発声", "四次方程式", "リズム", "指揮者", "位相空間論", "別荘", "七十人訳聖書", "トポス", "イヴァン・ニーベン", "線型方程式", "動物", "RILM", "数学の哲学", "場", "組合せ数学", "修辞学", "数学者の一覧", "新幹線", "生物学", "グリムの法則", "文学", "慣性系", "芸術", "角運動量", "実空間", "宇宙論", "楽器ショー", "コンスタンティノープルの陥落", "ヘルマン・ミンコフスキー", "ジョン・テイト", "群 (数学)", "連分数", "有界化", "算数・数学教育", "コモン", "暗号法", "シメオン・ドニ・ポアソン", "コール賞", "使用", "欧州連合", "暗号", "古典ギリシア語", "ディオニューソス", "再建", "ジェームス・ジョセフ・シルベスター", "素数", "墳墓文化", "ノート:ギリシア語", "大学設置基準", "計算", "生物工学", "統一場理論", "オーギュスタン＝ルイ・コーシー", "ヘンドリック・ローレンツ", "ミケーネ語", "アンリ・ポアンカレ", "ゴルフ場", "ポピュラー音楽", "トーマス・スティルチェス", "フェルディナント・ゴットホルト・マックス・アイゼンシュタイン", "イズミル", "水産学", "シンセサイザー", "接空間", "自然環境", "ソフィアノス", "名前空間", "コロンビア百科事典", "ヘレニック語派", "情報理論", "楽器", "アナトリア半島", "インド・ヨーロッパ語族", "建造環境", "数学的直観主義", "文化的空間", "書簡", "バルト・スラヴ語派", "定常宇宙論", "広場空間", "一般相対性理論", "企業", "MIDI", "シャルル・エルミート", "ゼータ関数", "ノイズミュージック", "日本建築学会", "楽器分類別一覧", "超音波", "分数", "ペーター・グスタフ・ディリクレ", "関数 (数学)", "インドの伝統音楽", "ガイア理論", "現代音楽/地域別の動向", "システム", "精神", "会計学", "角周波数", "ローラン・ラフォルグ", "ラテン語", "双子素数予想", "芸術学", "意味", "ダランベールの原理", "計算複雑性理論", "シュリニヴァーサ・ラマヌジャン", "ムーサ", "サクソフォーン", "順序集合", "生物", "旋法", "ヴェルナーの法則", "学問の一覧", "硬口蓋", "生理学", "言語のグループの一覧", "学者", "時間", "圏論", "訳語", "線文字B", "フェルマーの小定理", "シンコペーション", "数理最適化", "アリヤバータ", "ギリシア文字", "回転座標系", "解析力学", "アテナイ", "大学書林", "バルカン半島", "生命", "四色定理", "光", "非ユークリッド幾何学", "鼻音のガンマ", "経営学", "現代音楽", "緑道", "フラクタル幾何", "ラングランズ・プログラム", "ルーマニアの音楽", "カントリー・ミュージック", "ジョゼフ・リウヴィル", "クヴァリンスク文化", "使徒", "空間統合", "鐘状ビーカー文化", "ハウスドルフ空間", "ワールドミュージック", "ノルム線型空間", "古典力学の歴史", "賛美歌", "ケントゥム語とサテム語", "インドの数学", "ポアンカレ予想", "健康科学", "気象学", "アル・ファリシ", "偏位角度", "文化史", "オーケストラ", "ゲーム理論", "回転運動", "レコーディングエンジニア", "数学年表", "ブルガリアの音楽", "エンリコ・ボンビエリ", "古楽器", "情報工学", "ソルフェージュ", "ギリシャ", "慣性モーメント", "アラビア語", "中国の剰余定理", "エウローペー", "ウルフ賞数学部門", "東ティモールの音楽", "演奏者", "対称性", "撥弦楽器", "数理工学", "点 (数学)", "数理統計学", "Template:Infobox Language", "レコード会社一覧", "Iris Runge", "無音", "ネヴァンリンナ賞", "化学", "LF空間", "アドリアン＝マリ・ルジャンドル", "インド・イラン語派", "オデュッセイア", "テッサロニキ", "学術雑誌", "ウィリアム・ローワン・ハミルトン", "アルジュン・アパデュライ", "コンピレーション・アルバム", "数学基礎論", "関数空間", "古代ギリシア語の方言", "体系", "応用科学", "科学者", "カール・ノイマン", "菌類", "慣性力", "運動 (物理学)", "逆格子空間", "実験", "代数学の基本定理", "フェルマーの最終定理", "ヘレニズム", "代数学", "地質学", "双曲群", "バルト人", "蓄音機", "法学", "ヨーロッパ数学会", "学問", "Template‐ノート:数学", "Help:脚注/読者向け", "リーマン空間", "世界遺産", "ドニエプル・ドネツ文化", "無理数", "エスペラント", "差音", "光速", "儒学", "広辞苑", "バロック音楽", "エミール・アルティン", "イオアニス・メタクサス", "ロマン派音楽", "西サハラの音楽", "連結空間", "ベルンハルト・リーマン", "バルバロイ", "複素関数論", "Wikipedia:検証可能性", "アラブ音楽", "セルビアの音楽", "双対", "ジョン・ウィルソン (数学)", "真正細菌", "数学的構成主義", "ギリシア語ポントス方言", "海洋", "戦斧文化", "アンドレ・ヴェイユ", "推論規則", "解剖学", "印欧語学", "ルネサンス音楽", "インド", "ヘレニスト", "電子工学", "コリオリの力", "無限降下法", "ブライアン・コンラッド", "不完全性定理", "民主主義", "フォークソング", "空間", "エミール・ボレル", "二次方程式", "拍子", "スコットランド音楽", "ゴッドフレイ・ハロルド・ハーディ", "環境学", "仮想仕事", "函数環", "正教会", "合同式", "カラオケ", "自然哲学", "ブルガリア", "ミュージック・ビデオ", "リーマン予想", "環境問題", "オカルト", "Template:印欧語族", "イオニア諸島", "ピエール・ド・フェルマー", "言葉", "天体力学", "デモティキ", "方法", "スレドニ・ストグ文化", "カシミール効果", "角速度", "群論", "エドワード・ウェアリング", "学術用語集", "超自然", "景色", "函数空間", "カーボベルデの音楽", "表現論", "双子素数の予想", "逆問題", "平方剰余の相互法則", "建築学", "テクノ (ダンスミュージック)", "日本の私塾一覧", "代数的位相幾何学", "微積分学の基本定理", "日本数学会", "計量ベクトル空間", "ヘルマン・ワイル", "カオス理論", "アリストテレス", "古代ギリシア語", "クロード・シュヴァレー", "母語", "点", "歴史学", "統計学", "地中海世界", "園", "複素解析", "ギター", "シングル", "クロスオーバー (音楽)", "アファナシェヴォ文化", "万有引力", "アオリスト", "ピアノ", "売れた音楽家の一覧", "射影空間", "ローマ帝国", "民族音楽", "自然哲学者", "自然学", "博物学", "土木工学", "微積分", "ギリシャ王国", "自然地理学", "数に関する記事の一覧", "岩澤理論", "数学の競技", "エジプト", "トカラ語", "ブラックミュージック", "マニュエル・カステル", "レゲエ", "形式科学", "自転", "キプロス島", "構造", "変化", "和算", "アーベル賞", "日本十進分類法", "エドウィン・ハッブル", "空間充填", "地理学", "アルバニア", "学会", "ウイルス", "超越数", "テクノポップ", "民俗学", "歌手", "統計力学", "商学", "通時言語学", "私塾", "バルカン半島の音楽", "一次聴覚野", "相対性理論", "ヨーロッパ数学会賞", "線型位相空間", "パフヌティ・チェビシェフ", "計算可能性理論", "ギリシア文学", "新約聖書", "ジャン＝ピエール・セール", "カサレヴサ", "軍学", "楽器分類学", "ヌーリスターン語派", "インドネシアの音楽", "ギリシア人", "中東", "イタリック語派", "数学の歴史", "邦楽", "インド・ヨーロッパ祖語", "アメリカ", "中医学", "プレートテクトニクス", "アクサル・トゥエ", "レオンハルト・オイラー", "エレフテリオス・ヴェニゼロス", "大学", "大日本図書", "多様体", "映画", "アーリア人", "アッティカ", "岩澤健吉", "ネイティブスピーカーの数が多い言語の一覧", "ヤコビ記号", "有限幾何学", "古代バルカン諸語", "日本", "言語", "農学", "医学", "ハウス (音楽)", "古細菌", "内井惣七", "確率空間", "位相空間", "フランソワ・ビエト", "Super Audio CD", "テンション (音楽)", "磁場", "バーナード・ドゥワーク", "ジュリアン・バーバー", "トルク", "博物館学", "宇宙", "剛体の力学", "エルンスト・マッハ", "モノイド", "レオポルト・クロネッカー", "リーマンゼータ関数", "ヴァイオリン", "加速度", "演奏", "イギリス", "ブラーマグプタ", "ホモトピー", "管楽器", "時空", "ローマ", "ミケーネ文明", "数学的証明", "造園計画", "エヴァンジェリスタ・トリチェリ", "中国の数学", "ジャン・ル・ロン・ダランベール", "カール・フリードリヒ・ガウス", "スラヴ人", "単振動", "コンピュータ", "査読", "クルガン", "パズル", "位相幾何学", "国際数学連合", "ディオファントス方程式", "完了形", "文系", "物理学", "プロジェクト:数学", "定義", "ゲルト・ファルティングス", "技術", "コイネー", "文脈", "初等代数学", "数学 (教科)", "高木貞治", "栄養学", "私立大学", "中世西洋音楽", "包摂", "理系", "基本周波数", "アーベル記念基金", "代数方程式", "アテナイの学堂", "デロス島", "プラトン", "トルコ音楽", "不変量", "摩擦", "迂言形", "ウラムの螺旋", "陸上競技", "ルネ・デカルト", "人文科学", "内耳神経", "太陽光", "島宇宙", "コンパクト盤", "政治学", "伝統医学", "ツァコニア方言", "距離空間", "ジョゼフ・アルフレッド・セレ", "符号", "定理", "動詞", "低周波音", "古代の音楽", "中世", "抽象代数学", "専門用語", "タプル", "作曲家", "北アフリカの音楽", "機械工学", "原生生物", "モーメント", "調", "倫理学", "職業としての学問", "数学記号の表", "定規とコンパスによる作図", "原子力工学", "デシベル", "パラグアイの音楽", "国立公園", "数論", "生命の起源", "幾何学", "アナトリア仮説", "ドラムセット", "エネルギー", "ダイグロシア", "イラン語群", "学名", "歌", "整数列", "アルバム", "ウィキペディア", "フィールズ賞", "順序数", "グラスマンの法則 (言語学)", "ヨーロッパ", "遊園地", "無限", "総合科学", "集合論", "教養", "エーテル (物理)", "英語", "ゴットフリート・ライプニッツ", "ラジオ", "確率論", "バルト語派", "バルトロマエの法則", "芸能", "コンピュータネットワーク", "相対音感", "ゴールドバッハの予想", "3次元空間", "学位", "P進数", "ヴェブレン賞", "数学に関する記事の一覧", "ペル方程式", "屈折言語", "ジャズ", "生命の進化史", "アメリカ数学会", "ミシェル・ド・セルトー", "経済地理学", "ケルト音楽", "ダフィット・ヒルベルト", "純音", "景観", "緑空間", "リゾート", "就職", "マイケルソン・モーリーの実験", "量子力学", "コラッツの問題", "イスタンブル", "立方剰余の相互法則", "有理数", "ルイ・ポアソン", "解析幾何学", "色空間", "オトラント", "母音交替", "2次元", "数学", "セント・アンドルーズ大学 (スコットランド)", "DVD-Audio", "ウィンターの法則", "ウーニェチツェ文化", "分離公理", "近代音楽", "運動方程式", "位相空間 (物理学)", "Public Address", "力学系", "国際音声記号", "経営工学", "心理学", "モザンビークの音楽", "クレタ島", "概念", "偶力", "リミックス", "微分構造", "アドルフ・フルヴィッツ", "コルモゴロフ空間", "第二言語", "ヒッタイト語", "植物相", "バンド (音楽)", "保型関数", "歯学", "獣医学", "アルゴリズム情報理論", "打楽器", "セミコロン", "ヘブライ語", "応用化学", "狩猟", "コラッツの予想", "計算機", "希求法", "実解析", "サービト・イブン＝クッラ", "回転速度", "文部省", "対位法", "植物", "自然科学", "マケドニア共和国", "死語 (言語学)", "軟口蓋", "法律学", "中央公論新社", "応用数学", "不定方程式", "カッパドキア方言", "バックグラウンドミュージック", "数学上の未解決問題", "ゲルマン人", "コモンズの悲劇", "図形の一覧", "リングワ・フランカ", "朝鮮の伝統音楽", "零点", "地球の大気", "整数", "ヒップホップ音楽の歴史", "アナトリア語派", "天文現象", "正弦波", "逆数学", "数", "中心極限定理", "ロマンス人", "奉神礼", "ノート:数学", "アイルランド音楽", "並木道", "楽式", "ウラジーミル・ドリンフェルト", "アトル・セルバーグ", "Template‐ノート:印欧語族", "無形文化遺産", "多項式", "社会科学", "曲名一覧", "代数的整数", "数理論理学", "連続体仮説", "オリンピア", "運動学", "地理学的空間", "Unicode", "気候", "自然", "哲学", "アレクサンドル・グロタンディーク", "理学", "インド・アーリア語派", "セクションの書法", "農耕", "ラテン音楽", "振動", "デジタルオーディオプレーヤー", "Günter M. Ziegler", "生体力学", "楽譜", "演歌", "アルメニア語", "ピタゴラスの定理", "西洋音楽", "Y染色体ハプログループ", "キプロス", "ケルト語派", "造園", "空 (仏教)", "オイラーの等式", "生命の階層", "イギリスの音楽", "函数", "ルーツ・ミュージック", "ケルト人", "目的", "トルコ", "看護学", "数学定数", "研究所", "公理", "計算機科学", "ジョゼフ＝ルイ・ラグランジュ", "真核生物", "Éléments de mathématique", "力積", "密着空間", "微分幾何学", "哲学者", "完備", "BSD予想", "文化人類学", "ミュージカル映画", "十六元数", "有界", "超実数", "フィリップ・フルトヴェングラー", "Disquisitiones Arithmeticae", "微分積分学", "周波数", "四元数", "天文学", "陳景潤の定理", "表記体系", "カント", "固定ド", "キリスト教", "ブルース", "ヒップホップ", "空間群", "クルガン仮説", "イタリア", "振り子 (数学)", "赤道ギニアの音楽", "図形", "四元素", "運動量", "数の名称", "サービト数", "アンドロノヴォ文化", "理論", "マクスウェルの方程式", "ユークリッド原論", "Template:数学", "量", "暦", "ウィルソンの定理", "類体論", "オペレーションズリサーチ", "地球", "減衰比", "慣性", "数学的構造", "P≠NP予想", "バルカン言語連合", "リヒャルト・デーデキント", "マケドニア王国", "サンプリング", "庭園", "マイコープ文化", "経済学", "仕事 (物理学)", "空間の生産", "谷山・志村の定理", "別荘地", "電気工学", "地球の未来", "超数学", "インド数学", "ヤムナ文化", "Category:数学", "化学工学", "宮殿", "中公新書", "デヴィッド・ハーヴェイ", "ブリタニカ百科事典", "スタジオ・アルバム", "原生地域", "歌詞", "クリストフ・ブレイユ", "アラビア数学", "人文地理学", "カラブリア", "古典派音楽", "ヘーラクレース", "アイザック・ニュートン", "古代西洋音楽", "古典物理学", "ヴェーダ語", "コホモロジー", "現代ギリシア語", "動力学", "Portal:数学", "人類学", "減衰", "作曲", "イブン・タヒル・アル＝バグダディ", "ベルトランの仮説", "軍事学", "アメリカ合衆国の音楽", "藩校", "フランス", "収束", "空間論的転回", "バナッハ空間", "ニコラ・ブルバキ", "真空", "角加速度", "奇数", "偶数", "数理哲学", "理論物理学者", "ヒッグス場", "ガウス賞", "ベクトル束", "移動ド", "グリーンランドの音楽", "数理モデル", "巨大数", "沖縄音楽", "劇場", "志村五郎", "地球科学", "連続", "コンパクト空間", "キプロス文字", "トム・アポストル", "古代ギリシア", "ブラーマ・スプタ・シッダーンタ", "ゲーデルの完全性定理", "イブン・アル・ハイサム", "エーゲ海", "演繹", "映画音楽", "範囲", "研究", "アテネ", "観察", "国際連合教育科学文化機関", "春季賞", "行政学", "寺院", "-logy", "格", "ラファエロ・サンティ", "性科学", "変位", "ポール・エルデシュ", "速さ", "速度", "証明論", "写真", "イヌイットの音楽", "Category:数学関連のスタブ項目", "リー理論", "サマラ文化", "エレミア・ホロックス", "仮説", "倍音", "和声", "実験音楽", "関数解析", "渦", "数値解析", "ISBN", "ヒルベルト空間", "デザイン", "イタリア・ケルト語派", "ゲルマン語派", "ゲーデルの不完全性定理", "公務員", "脳神経科学", "空間編成", "無声音", "相関空間", "古典力学", "基準系", "波動", "教育学", "一様空間", "ルートヴィヒ・ランゲ", "自然数", "計算科学", "数学史", "ニュートン力学", "自由空間", "西洋音楽年表", "作詞", "双対ベクトル空間", "渦動説", "スキー場", "ヴルガリス", "論理", "数学者", "アンドリュー・ワイルズ", "ウルグアイの音楽", "ビッグバン仮説", "ロマ音楽", "入会地", "社会集団", "質量", "ウェアリングの問題", "シャルル・ジャン・ド・ラ・ヴァレ・プーサン", "ポピュラー和声", "ライブハウス", "形而上学", "経営情報学", "アフィン空間", "山火事", "古代ギリシアの音楽", "耳", "アレクシス・クレロー", "マグナ・グラエキア", "環 (数学)", "ラグランジュ力学", "座標", "位相線型空間", "ルキの法則", "合同数の問題", "アブジャド", "資格", "ハワイの音楽", "スケイプ", "チェコの音楽", "ペトルス・アピアヌス", "アンゴラの音楽", "A面/B面", "小数", "ソウルミュージック", "レコード", "ユークリッド幾何学", "記譜法", "アルバニア語", "俳優", "アドレス空間", "クラウディオス・プトレマイオス", "演奏会", "アドホックな仮説", "ヒルトの法則", "ムハンマド・バキル・ヤズディ", "メディア (媒体)", "ベクトル解析", "エルンスト・クンマー", "近代", "アダマンティス・コライス", "短周期振動", "数理物理学", "特殊相対性理論", "地球の地理史", "八元数", "ユーロビート", "接尾語", "地学", "レコードレーベル", "オイラーの定理 (数論)", "ヘルムート・ハッセ", "絶対音感", "材料工学", "八木橋正雄", "ミケーネ・ギリシャ語", "アンリ・ルフェーヴル", "パーク", "カール・ジーゲル", "言語学", "工学", "組合せ論", "カントールの対角線論法", "算数", "スペイン", "微積分学", "向心力", "民法", "環境保全", "ゲオルギオス・パパンドレウ", "三角法", "サーンキヤ学派", "算術", "共和政ローマ", "林学", "知識", "クリスマスの音楽一覧", "コンパクトディスク", "社会福祉学", "薬学", "ピタゴラス数", "実数", "ウルフ財団", "三次関数", "線型部分空間", "動力学 (物理学)", "閉鎖音", "位置エネルギー", "ガロア理論", "素数定理", "数学的な美", "聴覚", "複素数", "濃度 (数学)", "フェニキア文字", "友愛数", "物質", "Mathematical Reviews", "スラヴ語派", "ホモロジー", "可分空間", "西ヨーロッパ", "ナーラーヤナ・パンディト", "専門家", "メタ", "ヴェイユ予想", "ライブ・アルバム", "ロック (音楽)", "剛体", "ペルシア人", "多重線型代数", "ゴスペル (音楽)", "レオンディアス・サッフォー", "生態学", "直観", "アブストラクト・ナンセンス", "バーチ・スウィンナートン＝ダイアー予想", "線型代数学", "クノッソス", "離散数学", "ツォルンの補題", "アラン・ベイカー", "完全性", "歴史", "計算理論", "教育科学", "ヴィラ", "反応遠心力", "サモス島", "ギリシア語", "紀要", "アイヌ音楽", "完全数", "ヒルベルト・プログラム", "ジーヴァースの法則", "局所コンパクト群", "カール・グスタフ・ヤコブ・ヤコビ", "人間学", "空間 (数学)", "性 (文法)", "純粋数学", "科学", "地球史年表", "擦弦楽器", "アルベルト・アインシュタイン", "有限群", "コンゴ共和国の音楽", "ディラックの海", "応用力学", "潮汐", "コンスタンディノス・カラマンリス", "トルコ語", "舞台芸術", "二次形式", "社会学", "クラシック音楽", "連続体力学", "公立大学", "江戸時代", "最適化問題", "ヴァツワフ・シェルピニスキ", "フレッド・ダイアモンド", "レコード会社", "球状アンフォラ文化", "生活科学", "イヤーワーム", "即興演奏", "数学的帰納法", "等速円運動", "楽音", "グラフ理論", "関数解析学", "情報学", "構造 (数学)", "自然哲学の数学的諸原理", "動物相", "異性体", "調和振動子", "東ローマ帝国", "ブルークマンの法則", "モデル理論", "ピエール＝シモン・ラプラス", "作用素環", "無調", "ホメーロス", "レクリエーション", "関数一覧", "測量", "カバー", "宇宙空間", "クロード＝ガスパール・バシェ・ド・メジリアク"]
    }

}
