# 親
lady = Category.create(name: "レディース")

# 子
lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onepiece = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_roomwearpajamas = lady.children.create(name: "ルームウェア/パジャマ")
lady_legwear = lady.children.create(name: "レッグウェア")
lady_hat = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_Accessories = lady.children.create(name: "アクセサリー")
lady_hairaccessory = lady.children.create(name: "ヘアアクセサリー")
lady_smallarticles = lady.children.create(name: "小物")
lady_clock = lady.children.create(name: "時計")
lady_wigextension = lady.children.create(name: "ウィッグ/エクステ")
lady_yukataswimsuit = lady.children.create(name: "浴衣/水着")
lady_suitformaldress = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_maternity = lady.children.create(name: "マタニティ")
lady_other = lady.children.create(name: "その他")


# 孫
lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "ポロシャツ"}, {name: "キャミソール"}, {name: "タンクトップ"}, {name: "ホルスターネック"}, {name: "ニット/セーター"}, {name: "チュニック"}, {name: "カーディガン/ポレロ"}, {name: "アンサンブル"}, {name: "ベスト/ジレ"}, {name: "パーカー"}])
lady_jacket.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ダウンベスト"}, {name: "ジャンバー/ブルゾン"}, {name: "ポンチョ"}, {name: "ロングコート"}, {name: "トレンチコート"}, {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "チェスターコート"}, {name: "モッズコート"}, {name: "スタジャン"}, {name: "毛皮/ファーコート"}, {name: "スプリングコート"}, {name: "スカジャン"}, {name: "その他"}])
lady_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"}, {name: "ハーフパンツ"}, {name: "チノパン"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "クロップドパンツ"}, {name: "サロペット/オーバーオール"}, {name: "オールインワン"}, {name: "サルエルパンツ"}, {name: "ガウチョパンツ"}, {name: "その他"}])
lady_skirt.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"}, {name: "キュロット"}, {name: "その他"}])
lady_onepiece.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"}, {name: "その他"}])
lady_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"}, {name: "スニーカー"}, {name: "ミュール"}, {name: "モカシン"}, {name: "ローファー/革靴"}, {name: "フラットシューズ/バレエシューズ"}, {name: "長靴/レインシューズ"}, {name: "その他"}])
lady_roomwearpajamas.children.create([{name: "ルームウェア"}, {name: "パジャマ"}])
lady_legwear.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
lady_hat.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"}, {name: "キャップ"}, {name: "キャスケット"}, {name: "麦わら帽子"}, {name: "その他"}])
lady_bag.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"}, {name: "リュック/バックパック"}, {name: "ボストンバッグ"}, {name: "スポーツバック"}, {name: "ショルダーバッグ"}, {name: "クラッチバッグ"}, {name: "ポーチ/バニティ"}, {name: "ボディバッグ/ウェストバッグ"}, {name: "マザーズバッグ"}, {name: "メッセンジャーバッグ"}, {name: "ビジネスバッグ"}, {name: "旅行用バッグ/キャリーバッグ"}, {name: "ショップ袋"}, {name: "和装用バッグ"}, {name: "かごバッグ"}, {name: "その他"}])
lady_Accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"}, {name: "リング"}, {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "イヤリング"}, {name: "アンクレット"}, {name: "ブローチ/コサージュ"}, {name: "チャーム"}, {name: "その他"}])
lady_hairaccessory.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"}, {name: "その他"}])
lady_smallarticles.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"}, {name: "名刺入れ/定期入れ"}, {name: "キーケース"}, {name: "キーホルダー"}, {name: "手袋/アームカバー"}, {name: "ハンカチ"}, {name: "ベルト"}, {name: "マフラー/ショール"}, {name: "ストール/スヌード"}, {name: "バンダナ/スカーフ"}, {name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"}, {name: "イヤーマフラー"}, {name: "傘"}, {name: "レインコート/ポンチョ"}, {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
lady_clock.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}, {name: "その他"}])
lady_wigextension.children.create([{name: "前髪ウィッグ"}, {name: "ロングストレート"}, {name: "ロングカール"}, {name: "ショートストレート"}, {name: "ショートカール"}, {name: "その他"}])
lady_yukataswimsuit.children.create([{name: "浴衣"}, {name: "着物"}, {name: "振袖"}, {name: "長襦袢/半襦袢"}, {name: "水着セパレート"}, {name: "水着ワンピース"}, {name: "水着スポーツ用"}, {name: "その他"}])
lady_suitformaldress.children.create([{name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}, {name: "ドレス"}, {name: "パーティーバッグ"}, {name: "シューズ"}, {name: "ウェディング"}, {name: "その他"}])
lady_maternity.children.create([{name: "トップス"}, {name: "アウター"}, {name: "インナー"}, {name: "ワンピース"}, {name: "パンツ/スパッツ"}, {name: "スカート"}, {name: "パジャマ"}, {name: "授乳服"}, {name: "その他"}])
lady_other.children.create([{name: "コスプレ"}, {name: "下着"}, {name: "その他"}])


# 親
mens = Category.create(name: "メンズ")

# 子
mens_tops = mens.children.create(name: "トップス")
mens_jaketsouter = mens.children.create(name: "ジャケット/アウター")
mens_pants = mens.children.create(name: "パンツ")
mens_shoes = mens.children.create(name: "靴")
mens_bag = mens.children.create(name: "バッグ")
mens_suit = mens.children.create(name: "スーツ")
mens_hat = mens.children.create(name: "帽子")
mens_accessories = mens.children.create(name: "アクセサリー")
mens_smallarticles = mens.children.create(name: "小物")
mens_clock = mens.children.create(name: "時計")
mens_swimsuit = mens.children.create(name: "水着")
mens_legwear = mens.children.create(name: "レッグウェア")
mens_underwear = mens.children.create(name: "アンダーウェア")
mens_other = mens.children.create(name: "その他")


# 孫
mens_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ"}, {name: "ポロシャツ"}, {name: "タンクトップ"}, {name: "ニット/セーター"}, {name: "パーカー"}, {name: "カーディガン"}, {name: "スウェット"}, {name: "ジャージ"}, {name: "ベスト"}, {name: "その他"}])
mens_jaketsouter.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "レザージャケット"}, {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ナイロンジャケット"}, {name: "フライトジャケット"}, {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "ステンカラーコート"}, {name: "トレンチコート"}, {name: "モッズコート"}, {name: "チェスターコート"}, {name: "スタジャン"}, {name: "スカジャン"}, {name: "ブルゾン"}, {name: "マウンテンパーカー"}, {name: "ダウンベスト"}, {name: "ポンチョ"}, {name: "オーバーオール"}, {name: "その他"}])
mens_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "スラックス"}, {name: "チノパン"}, {name: "ショートパンツ"}, {name: "ペインターパンツ"}, {name: "サルエルパンツ"}, {name: "オーバーオール"}, {name: "その他"}])
mens_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "モカシン"}, {name: "ドレス/ビジネス"}, {name: "長靴/レインシューズ"}, {name: "デッキシューズ"}, {name: "その他"}])
mens_bag.children.create([ {name: "ショルダーバッグ"}, {name: "トートバッグ"}, {name: "ボストンバッグ"}, {name: "リュック/バックパック"}, {name: "ウェストポーチ"}, {name: "ボディーバッグ"}, {name: "ドラムバッグ"}, {name: "ビジネスバッグ"}, {name: "トラベルバッグ"}, {name: "メッセンジャーバッグ"}, {name: "エコバッグ"}, {name: "その他"}])
mens_suit.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}, {name: "スラックス"}, {name: "セットアップ"}, {name: "その他"}])
mens_hat.children.create([{name: "キャップ"}, {name: "ハット"}, {name: "ニットキャップ/ビーニー"}, {name: "ハンチング/ベレー帽"}, {name: "キャスケット"}, {name: "サンバイザー"}, {name: "その他"}])
mens_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"}, {name: "リング"}, {name: "ピアス(片耳)"}, {name: "ピアス(両耳)"}, {name: "アンクレット"}, {name: "その他"}])
mens_smallarticles.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "マネークリップ"}, {name: "コインケース/小銭入れ"}, {name: "名刺入れ/定期入れ"}, {name: "キーケース"}, {name: "キーホルダー"}, {name: "ネクタイ"}, {name: "手袋"}, {name: "ハンカチ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "ストール"}, {name: "バンダナ"}, {name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "ウォレットチェーン"}, {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"}, {name: "ストラップ"}, {name: "ネクタイピン"}, {name: "カフリンクス"}, {name: "イヤーマフラー"}, {name: "傘"}, {name: "レインコート"}, {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
mens_clock.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"}, {name: "金属ベルト"}, {name: "その他"}])
mens_swimsuit.children.create([{name: "一般水着"}, {name: "スポーツ用"}, {name: "アクセサリー"}, {name: "その他"}])
mens_legwear.children.create([{name: "ソックス"}, {name: "レギンス/スパッツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
mens_underwear.children.create([{name: "トランクス"}, {name: "ボクサーパンツ"}, {name: "その他"}])

# 親
babykids = Category.create(name: "ベビー・キッズ")

# 子
babykids_babywear95cmf = babykids.children.create(name: "ベビー服(女の子用)~95cm")
babykids_babywear95cmm = babykids.children.create(name: "ベビー服(男の子用)~95cm")
babykids_babywear95cma = babykids.children.create(name: "ベビー服(男女兼用)~95cm")
babykids_kidswear100cmf = babykids.children.create(name: "キッズ服(女の子用)100cm~")
babykids_kidswear100cmm = babykids.children.create(name: "キッズ服(男の子用)100cm~")
babykids_kidswear100cma = babykids.children.create(name: "キッズ服(男女兼用)100cm~")
babykids_kidsshoes = babykids.children.create(name: "キッズ靴")
babykids_kidsaccessary = babykids.children.create(name: "子供用ファッション小物")
babykids_kidsomutu = babykids.children.create(name: "おむつ/トイレ/バス")
babykids_kidstravel = babykids.children.create(name: "外出/移動用品")
babykids_kidsfoods = babykids.children.create(name: "授乳/食事")
babykids_kidsbed = babykids.children.create(name: "ベビー家具/寝具/室内用品")
babykids_kidstoy = babykids.children.create(name: "おもちゃ")
babykids_kidsmemorial = babykids.children.create(name: "行事/記念品")
babykids_other = babykids.children.create(name: "その他")

# 孫
babykids_babywear95cmf.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
babykids_babywear95cmm.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
babykids_babywear95cma.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"}, {name: "下着/肌着"}, {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
babykids_kidswear100cmf.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(チュニック)"}, {name: "トップス(タンクトップ)"}, {name: "トップス(その他)"}, {name: "スカート"}, {name: "パンツ"}, {name: "ワンピース"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"},{name: "和服"}, {name: "浴衣"}, {name: "甚平"}, {name: "水着"}, {name: "その他"}])
babykids_kidswear100cmm.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(その他)"}, {name: "パンツ"}, {name: "セットアップ"}, {name: "パジャマ"}, {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"}, {name: "甚平"}, {name: "水着"}, {name: "その他"}])
babykids_kidswear100cma.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"}, {name: "トップス(その他)"}, {name: "ボトムス"}, {name: "パジャマ"}, {name: "和服"}, {name: "その他"}])
babykids_kidsshoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "長靴"}, {name: "その他"}])
babykids_kidsaccessary.children.create([{name: "靴下/スパッツ"}, {name: "帽子"}, {name: "エプロン"}, {name: "サスペンダー"}, {name: "タイツ"}, {name: "ハンカチ"}, {name: "バンダナ"}, {name: "ベルト"}, {name: "マフラー"}, {name: "傘"}, {name: "手袋"}, {name: "スタイ"}, {name: "バッグ"}, {name: "その他"}])
babykids_kidsomutu.children.create([{name: "おむつ用品"}, {name: "おまる/補助便座"}, {name: "トレーニングパンツ"}, {name: "ベビーバス"}, {name: "お風呂用品"}, {name: "その他"}])
babykids_kidstravel.children.create([{name: "ベビーカー"}, {name: "抱っこひも/スリング"}, {name: "チャイルドシート"}, {name: "その他"}])
babykids_kidsfoods.children.create([{name: "ミルク"}, {name: "ベビーフード"}, {name: "ベビー用食器"}, {name: "その他"}])
babykids_kidsbed.children.create([{name: "ベッド"}, {name: "布団/毛布"}, {name: "イス"}, {name: "たんす"}, {name: "その他"}])
babykids_kidstoy.children.create([{name: "お風呂のおもちゃ"}, {name: "がらがら"}, {name: "オルゴール"}, {name: "ベビージム"}, {name: "手押し車/カタカタ"}, {name: "知育玩具"}, {name: "その他"}])
babykids_kidsmemorial.children.create([{name: "お宮参り用品"}, {name: "お食い初め用品"}, {name: "アルバム"}, {name: "手形/足形"}, {name: "その他"}])
babykids_other.children.create([{name: "母子手帳用品"}, {name: "その他"}])

# 親
homegoods = Category.create(name: "インテリア・住まい・小物")

# 子
homegoods_kitchen = homegoods.children.create(name: "キッチン/食器")
homegoods_bed = homegoods.children.create(name: "ベッド/マットレス")
homegoods_sofa = homegoods.children.create(name: "ソファ/ソファベッド")
homegoods_isu = homegoods.children.create(name: "椅子/チェア")
homegoods_tukue = homegoods.children.create(name: "机/テーブル")
homegoods_syuunou = homegoods.children.create(name: "収納家具")
homegoods_ragu = homegoods.children.create(name: "ラグ/カーペット/マット")
homegoods_karten = homegoods.children.create(name: "カーテン/ブラインド")
homegoods_raito = homegoods.children.create(name: "ライト/照明")
homegoods_singu = homegoods.children.create(name: "寝具")
homegoods_interiakomono = homegoods.children.create(name: "インテリア小物")
homegoods_kisetu = homegoods.children.create(name: "季節/年中行事")
homegoods_other = homegoods.children.create(name: "その他")


# 孫
homegoods_kitchen.children.create([{name: "食器"}, {name: "調理器具"}, {name: "収納/キッチン雑貨"}, {name: "弁当用品"}, {name: "カトラリー(スプーン等)"}, {name: "テーブル用品"}, {name: "容器"}, {name: "エプロン"}, {name: "アルコールグッズ"}, {name: "浄水機"}, {name: "その他"}])
homegoods_bed.children.create([{name: "セミシングルベッド"}, {name: "シングルベッド"}, {name: "セミダブルベッド"}, {name: "ダブルベッド"}, {name: "ワイドダブルベッド"}, {name: "クイーンベッド"}, {name: "キングベッド"}, {name: "脚付きマットレスベッド"}, {name: "マットレス"}, {name: "すのこベッド"}, {name: "ロフトベッド/システムベッド"}, {name: "簡易ベッド/折りたたみベッド"}, {name: "収納付き"}, {name: "その他"}])
homegoods_sofa.children.create([{name: "ソファセット"}, {name: "シングルソファ"}, {name: "ラブソファ"}, {name: "トリプルソファ"}, {name: "オットマン"}, {name: "コーナーソファ"}, {name: "ビーズソファ/クッションソファ"}, {name: "ローソファ/フロアソファ"}, {name: "ソファベッド"}, {name: "応援セット"}, {name: "ソファカバー"}, {name: "リクライニングソファ"}, {name: "その他"}])
homegoods_isu.children.create([{name: "一般"}, {name: "スツール"}, {name: "ダイニングチェア"}, {name: "ハイバックチェア"}, {name: "ロッキングチェア"}, {name: "座椅子"}, {name: "折り畳みイス"}, {name: "デスクチェア"}, {name: "その他"}])
homegoods_tukue.children.create([{name: "こたつ"}, {name: "カウンターテーブル"}, {name: "サイドテーブル"}, {name: "センターテーブル"}, {name: "ダイニングテーブル"}, {name: "座卓/ちゃぶ台"}, {name: "アウトドア用"}, {name: "パソコン用"}, {name: "事務机/学習机"}, {name: "その他"}])
homegoods_syuunou.children.create([{name: "リビング収納"}, {name: "キッチン収納"}, {name: "玄関/屋外収納"}, {name: "バス/トイレ収納"}, {name: "本収納"}, {name: "本/CD/DVD収納"}, {name: "洋服タンス/押入れ収納"}, {name: "電話台/FAX台"}, {name: "ドレッサー/鏡台"}, {name: "棚/ラック"}, {name: "ケース/ボックス"}, {name: "その他"}])
homegoods_ragu.children.create([{name: "ラグ"}, {name: "カーペット"}, {name: "ホットカーペット"}, {name: "玄関/キッチンマット"}, {name: "トイレ/バスマット"}, {name: "その他"}])
homegoods_karten.children.create([{name: "カーテン"}, {name: "ブラインド"}, {name: "ロールスクリーン"}, {name: "のれん"}, {name: "その他"}])
homegoods_raito.children.create([{name: "蛍光灯/電球"}, {name: "天井照明"}, {name: "フロアスタンド"}, {name: "その他"}])
homegoods_singu.children.create([{name: "布団/毛布"}, {name: "枕"}, {name: "シーツ/カバー"}, {name: "その他"}])
homegoods_interiakomono.children.create([{name: "ゴミ箱"}, {name: "ウェルカムボード"}, {name: "オルゴール"}, {name: "クッション"}, {name: "クッションカバー"}, {name: "スリッパラック"}, {name: "ティッシュボックス"}, {name: "バスケット/かご"}, {name: "フォトフレーム"}, {name: "マガジンラック"}, {name: "モービル"}, {name: "花瓶"}, {name: "灰皿"}, {name: "傘入れ"}, {name: "小物入れ"}, {name: "置時計"}, {name: "掛時計/柱時計"}, {name: "鏡(立て掛け式)"}, {name: "鏡(壁掛け式)"}, {name: "置物"}, {name: "風鈴"}, {name: "植物/観葉植物"}, {name: "その他"}])
homegoods_kisetu.children.create([{name: "正月"}, {name: "成人式"}, {name: "バレンタインデー"}, {name: "ひな祭り"}, {name: "子どもの日"}, {name: "母の日"}, {name: "父の日"}, {name: "サマーギフト/お中元"}, {name: "夏/夏休み"}, {name: "ハロウィン"}, {name: "敬老の日"}, {name: "七五三"}, {name: "お歳暮"}, {name: "クリスマス"}, {name: "冬一般"}, {name: "その他"}])


# 親
bookmusicgame = Category.create(name: "本・音楽・ゲーム")

# 子
bookmusicgame_book = bookmusicgame.children.create(name: "本")
bookmusicgame_comic = bookmusicgame.children.create(name: "漫画")
bookmusicgame_magazune = bookmusicgame.children.create(name: "雑誌")
bookmusicgame_cd = bookmusicgame.children.create(name: "CD")
bookmusicgame_dvd = bookmusicgame.children.create(name: "DVD/ブルーレイ")
bookmusicgame_record = bookmusicgame.children.create(name: "レコード")
bookmusicgame_game = bookmusicgame.children.create(name: "テレビゲーム")


# 孫
bookmusicgame_book.children.create([{name: "文学/小説"}, {name: "人文/社会"}, {name: "ノンフィクション/教養"}, {name: "地図/旅行ガイド"}, {name: "ビジネス/経済"}, {name: "健康/医学"}, {name: "コンピュータ/IT"}, {name: "趣味/スポーツ/実用"}, {name: "住まい/暮らし/子育て"}, {name: "アート/エンタメ"}, {name: "洋書"}, {name: "絵本"}, {name: "参考書"}, {name: "その他"}])
bookmusicgame_comic.children.create([{name: "全巻セット"}, {name: "少年漫画"}, {name: "少女漫画"}, {name: "青年漫画"}, {name: "女性漫画"}, {name: "同人誌"}, {name: "その他"}])
bookmusicgame_magazune.children.create([{name: "アート/エンタメ/ホビー"}, {name: "ファッション"}, {name: "ニュース/総合"}, {name: "趣味/スポーツ"}, {name: "その他"}])
bookmusicgame_cd.children.create([{name: "邦楽"}, {name: "洋楽"}, {name: "アニメ"}, {name: "クラシック"}, {name: "K-POP/アジア"}, {name: "キッズ/ファミリー"}, {name: "その他"}])
bookmusicgame_dvd.children.create([{name: "外国映画"}, {name: "日本映画"}, {name: "アニメ"}, {name: "TVドラマ"}, {name: "ミュージック"}, {name: "お笑い/バラエティ"}, {name: "スポーツ/フィットネス"}, {name: "キッズ/ファミリー"}, {name: "その他"}])
bookmusicgame_record.children.create([{name: "邦楽"}, {name: "洋楽"}, {name: "その他"}])
bookmusicgame_game.children.create([{name: "家庭用ゲーム本体"}, {name: "家庭用ゲームソフト"}, {name: "携帯用ゲーム本体"}, {name: "携帯用ゲームソフト"}, {name: "PCゲーム"}, {name: "その他"}])

# 親
hobby = Category.create(name: "おもちゃ・ホビー・グッズ")

# 子
hobby_toy = hobby.children.create(name: "おもちゃ")
hobby_tarent = hobby.children.create(name: "タレントグッズ")
hobby_comicgoods = hobby.children.create(name: "コミック/アニメグッズ")
hobby_cardgame = hobby.children.create(name: "トレーディングカード")
hobby_figure = hobby.children.create(name: "フィギュア")
hobby_musicalinstrument = hobby.children.create(name: "楽器/器材")
hobby_corection = hobby.children.create(name: "コレクション")
hobby_miritary = hobby.children.create(name: "ミリタリー")
hobby_art = hobby.children.create(name: "美術品")
hobby_artgoods = hobby.children.create(name: "アート用品")
hobby_other = hobby.children.create(name: "その他")

# 孫
#_.children.create([{name: ""}, ])
hobby_toy.children.create([{name: "キャラクターグッズ"}, {name: "ぬいぐるみ"}, {name: "小物/アクセサリー"}, {name: "模型/プラモデル"}, {name: "ミニカー"}, {name: "トイラジコン"}, {name: "プラモデル"}, {name: "ホビーラジコン"}, {name: "鉄道模型"}, {name: "その他"}])
hobby_tarent.children.create([{name: "アイドル"}, {name: "ミュージシャン"}, {name: "タレント/お笑い芸人"}, {name: "スポーツ選手"}, {name: "その他"}])
hobby_comicgoods.children.create([{name: "ストラップ"}, {name: "キーホルダー"}, {name: "バッジ"}, {name: "カード"}, {name: "クリアファイル"}, {name: "ポスター"}, {name: "タオル"}, {name: "その他"}])
hobby_cardgame.children.create([{name: "遊戯王"}, {name: "マジック：ザ・ギャザリング"}, {name: "ポケモンカードゲーム"}, {name: "デュエルマスターズ"}, {name: "バトルスピリッツ"}, {name: "プリパラ"}, {name: "アイカツ"}, {name: "カードファイト!!ヴァンガード"}, {name: "ヴァイスシュヴァルツ"}, {name: "プロ野球オーナーズリーグ"}, {name: "ベースボールヒーローズ"}, {name: "ドラゴンボール"}, {name: "スリーブ"}, {name: "その他"}])
hobby_figure.children.create([{name: "コミック/アニメ"}, {name: "特撮"}, {name: "ゲームキャラクター"}, {name: "SF/ファンタジー/ホラー"}, {name: "アメコミ"}, {name: "スポーツ"}, {name: "ミリタリー"}, {name: "その他"}])
hobby_musicalinstrument.children.create([{name: "エレキギター"}, {name: "アコースティックギター"}, {name: "ベース"}, {name: "エフェクター"}, {name: "アンプ"}, {name: "弦楽器"}, {name: "管楽器"}, {name: "鍵盤楽器"}, {name: "打楽器"}, {name: "和楽器"}, {name: "楽譜/スコア"}, {name: "レコーディング/PA機器"}, {name: "DJ機器"}, {name: "DTM/DAW"}, {name: "その他"}])
hobby_corection.children.create([{name: "武具"}, {name: "使用済み切手/官製はがき"}, {name: "旧貨幣/金貨/銀貨/記念硬貨"}, {name: "印刷物"}, {name: "ノベルティグッズ"}, {name: "その他"}])
hobby_miritary.children.create([{name: "トイガン"}, {name: "個人装備"}, {name: "その他"}])
hobby_art.children.create([{name: "陶芸"}, {name: "ガラス"}, {name: "漆芸"}, {name: "金属工芸"}, {name: "絵画/タペストリー"}, {name: "版画"}, {name: "彫刻/オブジェクト"}, {name: "書"}, {name: "写真"}, {name: "その他"}])
hobby_artgoods.children.create([{name: "画材"}, {name: "額縁"}, {name: "その他"}])
hobby_other.children.create([{name: "トランプ/UNO"}, {name: "カルタ/百人一首"}, {name: "ダーツ"}, {name: "ビリヤード"}, {name: "麻雀"}, {name: "パズル/ジグソーパズル"}, {name: "囲碁/将棋"}, {name: "オセロ/チェス"}, {name: "人生ゲーム"}, {name: "野球/サッカーゲーム"}, {name: "スポーツ"}, {name: "三輪車/乗り物"}, {name: "ヨーヨー"}, {name: "模型製作用品"}, {name: "鉄道"}, {name: "航空機"}, {name: "アマチュア無線"}, {name: "パチンコ/パチスロ"}, {name: "その他"}])


# 親

beauty = Category.create(name: "コスメ・香水・美容")

# 子
beauty_basemake = beauty.children.create(name: "ベースメイク")
beauty_makeup = beauty.children.create(name: "メイクアップ")
beauty_nailcare = beauty.children.create(name: "ネイルケア")
beauty_perfume = beauty.children.create(name: "香水")
beauty_skincare = beauty.children.create(name: "スキンケア/基礎化粧品")
beauty_haircare = beauty.children.create(name: "ヘアケア")
beauty_bodycare = beauty.children.create(name: "ボディケア")
beauty_oralcara = beauty.children.create(name: "オーラルケア")
beauty_relaxation = beauty.children.create(name: "リラクゼーション")
beauty_diet = beauty.children.create(name: "ダイエット")
beauty_other = beauty.children.create(name: "その他")

# 孫
#_.children.create([{name: ""}, ])
beauty_basemake.children.create([{name: "ファンデーション"}, {name: "化粧下地"}, {name: "コントロールカラー"}, {name: "BBクリーム"}, {name: "CCクリーム"}, {name: "コンシーラー"}, {name: "フェイスパウダー"}, {name: "トライアルセット/サンプル"}, {name: "その他"}])
beauty_makeup.children.create([{name: "アイシャドウ"}, {name: "口紅"}, {name: "リップグロス"}, {name: "リップライナー"}, {name: "チーク"}, {name: "フェイスカラー"}, {name: "マスカラ"}, {name: "アイライナー"}, {name: "つけまつげ"}, {name: "アイブロウペンシル"}, {name: "パウダーアイブロウ"}, {name: "眉マスカラ"}, {name: "トライアルセット/サンプル"}, {name: "メイク道具/化粧小物"}, {name: "美顔用品/美顔ローラー"}, {name: "その他"}])
beauty_nailcare.children.create([{name: "ネイルカラー"}, {name: "カラージェル"}, {name: "ナイルベースコート/トップコート"}, {name: "ネイルアート用品"}, {name: "ネイルパーツ"}, {name: "ネイルチップ/付け爪"}, {name: "手入れ用具"}, {name: "除光液"}, {name: "その他"}])
beauty_perfume.children.create([{name: "香水(女性用)"}, {name: "香水(男性用)"}, {name: "ユニセックス"}, {name: "ボディミスト"}, {name: "その他"}])
beauty_skincare.children.create([{name: "化粧水/ローション"}, {name: "乳液/ミルク"}, {name: "美容液"}, {name: "フェイスクリーム"}, {name: "洗顔料"}, {name: "クレンジング/メイク落とし"}, {name: "パック/フェイスマスク"}, {name: "ジェル/ゲル"}, {name: "ブースター/導入液"}, {name: "アイケア"}, {name: "リップケア"}, {name: "トライアルセット/サンプル"}, {name: "洗顔グッズ"}, {name: "その他"}])
beauty_haircare.children.create([{name: "シャンプー"}, {name: "トリートメント"}, {name: "コンディショナー"}, {name: "リンス"}, {name: "スタイリング剤"}, {name: "カラーリング剤"}, {name: "ブラシ"}, {name: "その他"}])
beauty_bodycare.children.create([{name: "オイル/クリーム"}, {name: "ハンドクリーム"}, {name: "ローション"}, {name: "日焼け止め/サンオイル"}, {name: "ボディソープ"}, {name: "入浴剤"}, {name: "制汗/デオドラント"}, {name: "フットケア"}, {name: "その他"}])
beauty_oralcara.children.create([{name: "口臭防止/エチケット用品"}, {name: "歯ブラシ"}, {name: "その他"}])
beauty_relaxation.children.create([{name: "エッセンシャルオイル"}, {name: "芳香器"}, {name: "お香/香炉"}, {name: "キャンドル"}, {name: "リラクゼーショングッズ"}, {name: "その他"}])
beauty_diet.children.create([{name: "ダイエット食品"}, {name: "エクササイズ用品"}, {name: "体重計"}, {name: "体脂肪計"}, {name: "その他"}])
beauty_other.children.create([{name: "健康用品"}, {name: "看護/介護用品"}, {name: "救急/衛生用品"}, {name: "その他"}])


# 親
electric = Category.create(name: "家電・スマホ・カメラ")

# 子
electric_sumaho = electric.children.create(name: "スマートフォン/携帯電話")
electric_sumahoaccce = electric.children.create(name: "スマホアクセサリー")
electric_pctab = electric.children.create(name: "PC/タブレット")
electric_camera = electric.children.create(name: "カメラ")
electric_terevi = electric.children.create(name: "テレビ/映像機器")
electric_audio = electric.children.create(name: "オーディオ機器")
electric_beauty = electric.children.create(name: "美容/健康")
electric_cooler = electric.children.create(name: "冷暖房/空調")
electric_seikatukaden = electric.children.create(name: "生活家電")
electric_other = electric.children.create(name: "その他")

# 孫
electric_sumaho.children.create([{name: "スマートフォン本体"}, {name: "バッテリー/充電器"}, {name: "携帯電話本体"}, {name: "PHS本体"}, {name: "その他"}])
electric_sumahoaccce.children.create([{name: "Andoroid用ケース"}, {name: "iPhone用ケース"}, {name: "カバー"}, {name: "イヤホンジャック"}, {name: "ストラップ"}, {name: "フィルム"}, {name: "自撮り棒"}, {name: "その他"}])
electric_pctab.children.create([{name: "タブレット"}, {name: "ノートPC"}, {name: "デスクトップ型PC"}, {name: "ディスプレイ"}, {name: "電子ブックリーダー"}, {name: "PC周辺機器"}, {name: "PCパーツ"}, {name: "その他"}])
electric_camera.children.create([{name: "デジタルカメラ"}, {name: "ビデオカメラ"}, {name: "レンズ(単焦点)"}, {name: "レンズ(ズーム)"}, {name: "フィルムカメラ"}, {name: "防犯カメラ"}, {name: "その他"}])
electric_terevi.children.create([{name: "テレビ"}, {name: "プロジェクター"}, {name: "ブルーレイレコーダー"}, {name: "DVDレコーダー"}, {name: "ブルーレイプレイヤー"}, {name: "DVDプレイヤー"}, {name: "映像用ケーブル"}, {name: "その他"}])
electric_audio.children.create([{name: "ポータブルプレイヤー"}, {name: "イヤフォン"}, {name: "ヘッドフォン"}, {name: "アンプ"}, {name: "スピーカー"}, {name: "ケーブル/シールド"}, {name: "ラジオ"}, {name: "その他"}])
electric_beauty.children.create([{name: "ヘアドライヤー"}, {name: "ヘアアイロン"}, {name: "美容機器"}, {name: "電気シェーバー"}, {name: "電動歯ブラシ"}, {name: "その他"}])
electric_cooler.children.create([{name: "エアコン"}, {name: "空気清浄機"}, {name: "加湿器"}, {name: "扇風機"}, {name: "除湿機"}, {name: "ファンヒーター"}, {name: "電気ヒーター"}, {name: "オイルヒーター"}, {name: "ストーブ"}, {name: "ホットカーペット"}, {name: "こたつ"}, {name: "電気毛布"}, {name: "その他"}])
electric_seikatukaden.children.create([{name: "冷蔵庫"}, {name: "洗濯機"}, {name: "炊飯器"}, {name: "電子レンジ/オーブン"}, {name: "調理機器"}, {name: "アイロン"}, {name: "掃除機"}, {name: "エスプレッソマシーン"}, {name: "コーヒーメーカー"}, {name: "衣類乾燥機"}, {name: "その他"}])



# 親
sports = Category.create(name: "スポーツ・レジャー")

# 子
sports_golf = sports.children.create(name: "ゴルフ")
sports_fishing = sports.children.create(name: "フィッシング")
sports_cycle = sports.children.create(name: "自転車")
sports_training = sports.children.create(name: "トレーニング/エクササイズ")
sports_baseball = sports.children.create(name: "野球")
sports_succer = sports.children.create(name: "サッカー/フットサル")
sports_tenisu = sports.children.create(name: "テニス")
sports_snowbord = sports.children.create(name: "スノーボード")
sports_skiy = sports.children.create(name: "スキー")
sports_othersports = sports.children.create(name: "その他スポーツ")
sports_outdoor = sports.children.create(name: "アウトドア")
sports_other = sports.children.create(name: "その他")

# 孫
sports_golf.children.create([{name: "クラブ"}, {name: "ウエア(男性用)"}, {name: "ウエア(女性用)"}, {name: "バッグ"}, {name: "シューズ(男性用)"}, {name: "シューズ(女性用)"}, {name: "アクセサリー"}, {name: "その他"}])
sports_fishing.children.create([{name: "ロッド"}, {name: "リール"}, {name: "ルアー用品"}, {name: "ウエア"}, {name: "釣り糸/ライン"}, {name: "その他"}])
sports_cycle.children.create([{name: "自転車本体"}, {name: "ウエア"}, {name: "パーツ"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: "工具/メンテナンス"}, {name: "その他"}])
sports_training.children.create([{name: "ランニング"}, {name: "ウォーキング"}, {name: "ヨガ"}, {name: "トレーニング用品"}, {name: "その他"}])
sports_baseball.children.create([{name: "ウェア"}, {name: "シューズ"}, {name: "グローブ"}, {name: "バット"}, {name: "アクセサリー"}, {name: "防具"}, {name: "練習機器"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sports_succer.children.create([{name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sports_tenisu.children.create([{name: "ラケット(硬式用)"}, {name: "ラケット(軟式用)"}, {name: "ウェア"}, {name: "シューズ"}, {name: "ボール"}, {name: "アクセサリー"}, {name: "記念グッズ"}, {name: "応援グッズ"}, {name: "その他"}])
sports_snowbord.children.create([{name: "ボード"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"}, {name: "ウエア/装備(男性用)"}, {name: "ウエア/装備(女性用)"}, {name: "ウエア/装備(子ども用)"}, {name: "アクセサリー"}, {name: "バッグ"}, {name: "その他"} ])
sports_skiy.children.create([{name: "板"}, {name: "ブーツ(男性用)"}, {name: "ブーツ(女性用)"}, {name: "ブーツ(子ども用)"},{name: "ビンディング"},  {name: "ウエア/装備(男性用)"}, {name: "ウエア/装備(女性用)"}, {name: "ウエア/装備(子ども用)"},{name: "ストック"}, {name: "その他"}])
sports_othersports.children.create([{name: "ダンス/バレエ"}, {name: "サーフィン"}, {name: "バスケットボール"}, {name: "バドミントン"}, {name: "バレーボール"}, {name: "スケートボード"}, {name: "陸上競技"}, {name: "ラグビー"}, {name: "アメリカンフットボール"}, {name: "ボクシング"}, {name: "ボウリング"}, {name: "その他"}])
sports_outdoor.children.create([{name: "テント/タープ"}, {name: "ライト/ランタン"}, {name: "寝袋/寝具"}, {name: "テーブル/チェア"}, {name: "ストーブ/コンロ"}, {name: "調理器具"}, {name: "食器"}, {name: "登山用品"}, {name: "その他"}])
sports_other.children.create([{name: "旅行用品"}, {name: "その他"}])


# 親
handmaid = Category.create(name: "ハンドメイド")

# 子
handmaid_ladysacce = handmaid.children.create(name: "アクセサリー(女性用)")
handmaid_komono = handmaid.children.create(name: "ファッション/小物")
handmaid_tokei = handmaid.children.create(name: "アクセサリー/時計")
handmaid_nitiyouhin = handmaid.children.create(name: "日用品/インテリア")
handmaid_hobby = handmaid.children.create(name: "趣味/おもちゃ")
handmaid_kids = handmaid.children.create(name: "キッズ/ベビー")
handmaid_sozai = handmaid.children.create(name: "素材/材料")
handmaid_nizi = handmaid.children.create(name: "二次創作物")
handmaid_other = handmaid.children.create(name: "その他")

# 孫
# .children.create([{name: ""}, ])
handmaid_ladysacce.children.create([{name: "ピアス"}, {name: "イヤリング"}, {name: "ネックレス"}, {name: "ブレスレット"}, {name: "リング"}, {name: "チャーム"}, {name: "ヘアゴム"}, {name: "アンクレット"}, {name: "その他"}])
handmaid_komono.children.create([{name: "バッグ(女性用)"}, {name: "バッグ(男性用)"}, {name: "財布(女性用)"}, {name: "財布(男性用)"}, {name: "ファッション雑貨"}, {name: "その他"}])
handmaid_tokei.children.create([{name: "アクセサリー(男性用)"}, {name: "時計(女性用)"}, {name: "時計(男性用)"}, {name: "その他"}])
handmaid_nitiyouhin.children.create([{name: "キッチン用品"}, {name: "家具"}, {name: "文房具"}, {name: "アート/写真"}, {name: "アロマ/キャンドル"}, {name: "フラワー/ガーデン"}, {name: "その他"}])
handmaid_hobby.children.create([{name: "クラフト/布製品"}, {name: "おもちゃ/人形"}, {name: "その他"}])
handmaid_kids.children.create([{name: "ファッション雑貨"}, {name: "スタイ/よだれかけ"}, {name: "外出用品"}, {name: "ネームタグ"}, {name: "その他"}])
handmaid_sozai.children.create([{name: "各種パーツ"}, {name: "生地/糸"}, {name: "型紙/パターン"}, {name: "その他"}])
handmaid_nizi.children.create([{name: "Ingress"}, {name: "クリエイターズ宇宙兄弟"}, {name: "シンデレラガールズCPグッズ"}])


# 親
ticket= Category.create(name: "チケット")

# 子
ticket_live = ticket.children.create(name: "音楽")
ticket_sports = ticket.children.create(name: "スポーツ")
ticket_musical = ticket.children.create(name: "演劇/芸能")
ticket_event = ticket.children.create(name: "イベント")
ticket_movies = ticket.children.create(name: "映画")
ticket_facility = ticket.children.create(name: "施設利用券")
ticket_discount = ticket.children.create(name: "優待券/割引券")
ticket_other = ticket.children.create(name: "その他")

# 孫
ticket_live.children.create([{name: "男性アイドル"}, {name: "女性アイドル"}, {name: "韓流"}, {name: "国内アーティスト"}, {name: "国外アーティスト"}, {name: "音楽フェス"}, {name: "声優/アニメ"}, {name: "その他"}])
ticket_sports.children.create([{name: "サッカー"}, {name: "野球"}, {name: "テニス"}, {name: "格闘技/プロレス"}, {name: "相撲/武道"}, {name: "ゴルフ"}, {name: "バレーボール"}, {name: "バスケットボール"}, {name: "モータースポーツ"}, {name: "ウィンタースポーツ"}, {name: "その他"}])
ticket_musical.children.create([{name: "ミュージカル"}, {name: "演劇"}, {name: "伝統芸能"}, {name: "落語"}, {name: "お笑い"}, {name: "オペラ"}, {name: "サーカス"}, {name: "バレエ"}, {name: "その他"}])
ticket_event.children.create([{name: "声優/アニメ"}, {name: "キッズ/ファミリー"}, {name: "トークショー/講演会"}, {name: "その他"}])
ticket_movies.children.create([{name: "邦画"}, {name: "洋画"}, {name: "その他"}])
ticket_facility.children.create([{name: "遊園地/テーマパーク"}, {name: "美術館/博物館"}, {name: "スキー場"}, {name: "ゴルフ場"}, {name: "フィットネスクラブ"}, {name: "プール"}, {name: "ボウリング場"}, {name: "水族館"}, {name: "動物園"}, {name: "その他"}])
ticket_discount.children.create([{name: "ショッピング"}, {name: "レストラン/食事券"}, {name: "フード/ドリンク券"}, {name: "宿泊券"}, {name: "その他"}])


# 親
car = Category.create(name: "自動車・オートバイ")

# 子
car_cars = car.children.create(name: "自動車本体")
car_taiya = car.children.create(name: "自動車タイヤ/ホイール")
car_parts = car.children.create(name: "自動車パーツ")
car_caracce = car.children.create(name: "自動車アクセサリー")
car_motorcycle = car.children.create(name: "オートバイ車体")
car_motorcycleparts = car.children.create(name: "オートバイパーツ")
car_motorcycleacce = car.children.create(name: "オートバイアクセサリー")

# 孫
car_cars.children.create([{name: "国内自動車本体"}, {name: "国外自動車本体"}])
car_taiya.children.create([{name: "タイヤ/ホイールセット"}, {name: "タイヤ"}, {name: "ホイール"}, {name: "その他"}])
car_parts.children.create([{name: "サスペンション"}, {name: "ブレーキ"}, {name: "外装、エアロパーツ"}, {name: "ライト"}, {name: "内装品、シート"}, {name: "ステアリング"}, {name: "マフラー・排気系"}, {name: "エンジン、過給機、冷却装置"}, {name: "クラッチ、ミッション、駆動系"}, {name: "電装品"}, {name: "補強パーツ"}, {name: "汎用パーツ"}, {name: "外国自動車用パーツ"}, {name: "その他"}])
car_caracce.children.create([{name: "車内アクセサリー"}, {name: "カーナビ"}, {name: "カーオーディオ"}, {name: "車外アクセサリー"}, {name: "メンテナンス用品"}, {name: "チャイルドシート"}, {name: "ドライブレコーダー"}, {name: "レーダー探知機"}, {name: "カタログ/マニュアル"}, {name: "セキュリティ"}, {name: "ETC"}, {name: "その他"}])
car_motorcycleparts.children.create([{name: "タイヤ"}, {name: "マフラー"}, {name: "エンジン、冷却装置"}, {name: "カウル、フェンダー、外装"}, {name: "サスペンション"}, {name: "ホイール"}, {name: "シート"}, {name: "ブレーキ"}, {name: "タンク"}, {name: "ライト、ウィンカー"}, {name: "チェーン、スプロケット、駆動系"}, {name: "メーター"}, {name: "電装系"}, {name: "ミラー"}, {name: "外国オートバイ用パーツ"}, {name: "その他"}])
car_motorcycleacce.children.create([{name: "ヘルメット/シールド"}, {name: "バイクウエア/装備"}, {name: "アクセサリー"}, {name: "メンテナンス"}, {name: "カタログ/マニュアル"}, {name: "その他"}])



# 親
other = Category.create(name: "その他")

# 子
other_bulksale = other.children.create(name: "まとめ売り")
other_pets = other.children.create(name: "ペット用品")
other_foods = other.children.create(name: "飲料/酒")
other_drink = other.children.create(name: "日用品/生活雑貨/旅行")
other_nitiyouhin = other.children.create(name: "アンティーク/コレクション")
other_collection = other.children.create(name: "文房具/事務用品")
other_stationery = other.children.create(name: "事務/店舗用品")
other_office = other.children.create(name: "事務/店舗用品")
other_others = other.children.create(name: "その他")

# 孫
other_pets.children.create([{name: "ペットフード"}, {name: "犬用品"}, {name: "猫用品"}, {name: "魚用品/水草"},{name: "小動物用品"},  {name: "爬虫類/両生類用品"}, {name: "かご/おり"}, {name: "鳥用品"}, {name: "虫類用品"}, {name: "その他"}])
other_foods.children.create([{name: "菓子"}, {name: "米"}, {name: "野菜"}, {name: "果物"}, {name: "調味料"}, {name: "魚介類(加工食品)"}, {name: "肉類(加工食品)"}, {name: "その他 加工食品"}, {name: "その他"}])
other_drink.children.create([{name: "コーヒー"}, {name: "ソフトドリンク"}, {name: "ミネラルウォーター"}, {name: "茶"}, {name: "ウイスキー"}, {name: "ワイン"},  {name: "ブランデー"}, {name: "焼酎"}, {name: "日本酒"}, {name: "ビール、発泡酒"}, {name: "その他"}])
other_nitiyouhin.children.create([{name: "タオル/バス用品"}, {name: "日用品/生活雑貨"}, {name: "洗剤/柔軟剤"}, {name: "旅行用品"}, {name: "防災関連グッズ"}, {name: "その他"}])
other_collection.children.create([{name: "雑貨"}, {name: "工芸品"}, {name: "家具"}, {name: "印刷物"}, {name: "その他"}])
other_stationery.children.create([{name: "筆記用具"}, {name: "ノート/メモ帳"}, {name: "テープ/マスキングテープ"}, {name: "カレンダー/スケジュール"}, {name: "アルバム/スクラップ"}, {name: "ファイル/バインダー"}, {name: "ハサミ/カッター"}, {name: "カードホルダー/名刺管理"}, {name: "のり/ホッチキス"}, {name: "その他"}])
other_others.children.create([{name: "オフィス用品一般"}, {name: "オフィス家具"}, {name: "店舗用品"}, {name: "OA機器"}, {name: "ラッピング/包装"}, {name: "その他"}])




