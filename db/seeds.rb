# カテゴリを作成（全てのタグをCategoryとして統合）
puts "Creating categories..."

# 気分（MVP用：ガッツリ/サッパリ）
['ガッツリ', 'サッパリ'].each { |name| Category.find_or_create_by(name: name) }

# 時間帯
['朝', '昼', '夜', 'おやつ'].each { |name| Category.find_or_create_by(name: name) }

# 季節
['春', '夏', '秋', '冬'].each { |name| Category.find_or_create_by(name: name) }

# 気分詳細
['疲れた', '元気', 'リラックス', '集中したい', '特別な日'].each { |name| Category.find_or_create_by(name: name) }

# ジャンル
['和食', '洋食', '中華', 'エスニック', 'その他'].each { |name| Category.find_or_create_by(name: name) }

# 調理スタイル
['簡単', '本格的', '温かい', '冷たい'].each { |name| Category.find_or_create_by(name: name) }

# ヘルシーさ
['ヘルシー', 'こってり', '野菜多め', 'タンパク質重視'].each { |name| Category.find_or_create_by(name: name) }

puts "Categories created!"

# 料理データの作成
puts "Creating dishes..."

foods_data = [
  # ガッツリ系 - 朝食
  {
    name: 'ベーコンエッグ',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: 'パンケーキ',
    category: 'ガッツリ',
    time_of_days: ['朝', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['特別な日', 'リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '焼き魚',
    category: 'ガッツリ',
    time_of_days: ['朝', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'フレンチトースト',
    category: 'ガッツリ',
    time_of_days: ['朝', 'おやつ'],
    seasons: ['春', '秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'チーズオムレツ',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ワッフル',
    category: 'ガッツリ',
    time_of_days: ['朝', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'イングリッシュブレックファスト',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: 'ホットサンド',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'クロワッサンサンド',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的'],
    healthiness_types: ['こってり']
  },
  {
    name: '牛丼',
    category: 'ガッツリ',
    time_of_days: ['朝', '昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['疲れた', '元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },

  # ガッツリ系 - 昼食・夜食
  {
    name: 'とんかつ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気', '疲れた'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: 'ハンバーガー',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ラーメン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['疲れた', '元気'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'カレーライス',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['元気', '疲れた'],
    genres: ['その他'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'チキンソテー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ピザ',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気', '特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'パスタボロネーゼ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '唐揚げ',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: 'ステーキ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: '親子丼',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['疲れた', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ハンバーグ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: '焼きそば',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'タコライス',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'オムライス',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気', 'リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ロコモコ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: 'チキンカツ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: 'エビフライ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'カツカレー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'チャーハン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '麻婆豆腐',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'エビチリ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: '酢豚',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: '回鍋肉',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: '青椒肉絲',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'ビーフストロガノフ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ムサカ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'ラザニア',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'パエリア',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'リゾット',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'グラタン',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'シチュー',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'ポークチョップ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ローストチキン',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ラムチョップ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'カルボナーラ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'アマトリチャーナ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ペスカトーレ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'アラビアータ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'プッタネスカ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'スパゲッティ・アリオ・オリオ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ボンゴレ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ミートボールパスタ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'タコス',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'ブリトー',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'エンチラーダ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ケサディーヤ',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ファヒータ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'ナチョス',
    category: 'ガッツリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ガパオライス',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'パッタイ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'グリーンカレー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'トムヤムクン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ビリヤニ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'タンドリーチキン',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'バターチキンカレー',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'ナン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'キーマカレー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'サモサ',
    category: 'ガッツリ',
    time_of_days: ['おやつ'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'チキンティッカ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'ダル',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'プルコギ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'チキン南蛮',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'エビマヨ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '天ぷら',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '寿司',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: '刺身',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'すき焼き',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: 'しゃぶしゃぶ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '焼き鳥',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: 'うな重',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: '海鮮丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'かつ丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '天丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '鉄火丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'ちらし寿司',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '手巻き寿司',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'おでん',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '肉じゃが',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: 'きんぴらごぼう',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'ぶり大根',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '筑前煮',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: '豚の角煮',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり']
  },
  {
    name: '鶏の照り焼き',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['タンパク質重視']
  },
  {
    name: '山形風芋煮',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め']
  },
  {
    name: '宮城風芋煮',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め', 'こってり']
  },
  {
    name: '芋の子汁',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'かしみん焼き',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視']
  },
  {
    name: '水ナスの浅漬け',
    category: 'サッパリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },

  # サッパリ系 - 朝食
  {
    name: 'フルーツヨーグルト',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'おにぎり',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'スムージーボウル',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'トースト',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '納豆ご飯',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'シリアル',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'オートミール',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'アサイーボウル',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'プレーンヨーグルト',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'バナナスムージー',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '卵かけご飯',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'おかゆ',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['疲れた', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'みそ汁',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '豆乳',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'フルーツサラダ',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'グリーンスムージー',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },

  # サッパリ系 - 昼食・夜食
  {
    name: 'ざるそば',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'サラダボウル',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: '冷やし中華',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['中華'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ポケボウル',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'お茶漬け',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['疲れた', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'うどん',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['疲れた'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '野菜炒め',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: '湯豆腐',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'フルーツサンド',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '抹茶アイス',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'そうめん',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '冷奴',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'ひやむぎ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ガスパチョ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'コンソメスープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ミネストローネ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'クラムチャウダー',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'オニオンスープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'わかめスープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '春雨スープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'すまし汁',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '茶碗蒸し',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'たまご豆腐',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'ごま豆腐',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '胡麻ドレッシングサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'シーザーサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'コブサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'グリーンサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'カプレーゼ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'タブレ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め']
  },
  {
    name: 'ファラフェル',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'フムス',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'バババガヌーシュ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ツァジキ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ブルスケッタ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'クロスティーニ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'アクアパッツァ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'セビーチェ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'カルパッチョ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視']
  },
  {
    name: 'マリネ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ピクルス',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '酢の物',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '浅漬け',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'もずく酢',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ところてん',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: '水羊羹',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'かき氷',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'アイスクリーム',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ソルベ',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー']
  },
  {
    name: 'ジェラート',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー']
  }
]

foods_data.each do |food_data|
  dish = Dish.find_or_create_by(name: food_data[:name])
  
  # 気分カテゴリ（ガッツリ/サッパリ）
  if food_data[:category]
    category = Category.find_by(name: food_data[:category])
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "気分") if category
  end
  
  # 時間帯
  food_data[:time_of_days]&.each do |time_name|
    category = Category.find_by(name: time_name)
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "時間帯") if category
  end
  
  # 季節
  food_data[:seasons]&.each do |season_name|
    category = Category.find_by(name: season_name)
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "季節") if category
  end
  
  # 気分詳細
  food_data[:moods]&.each do |mood_name|
    category = Category.find_by(name: mood_name)
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "気分詳細") if category
  end
  
  # ジャンル
  food_data[:genres]&.each do |genre_name|
    category = Category.find_by(name: genre_name)
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "ジャンル") if category
  end
  
  # 調理スタイル
  food_data[:cooking_styles]&.each do |style_name|
    category = Category.find_by(name: style_name)
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "調理スタイル") if category
  end
  
  # ヘルシーさ
  food_data[:healthiness_types]&.each do |health_name|
    category = Category.find_by(name: health_name)
    CategoryContent.find_or_create_by(dish: dish, category: category, label: "ヘルシーさ") if category
  end
end

puts "Dishes created!"
puts "Total dishes: #{Dish.count}"
puts "Total categories: #{Category.count}"
puts "Total connections: #{CategoryContent.count}"
puts "Seed data creation completed!"