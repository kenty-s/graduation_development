# 属性データの作成
puts "Creating attributes..."

# 時間帯
time_of_days = ['朝', '昼', '夜', 'おやつ']
time_of_days.each do |name|
  TimeOfDay.find_or_create_by(name: name)
end

# 季節
seasons = ['春', '夏', '秋', '冬']
seasons.each do |name|
  Season.find_or_create_by(name: name)
end

# 気分
moods = ['疲れた', '元気', 'リラックス', '集中したい', '特別な日']
moods.each do |name|
  Mood.find_or_create_by(name: name)
end

# ジャンル
genres = ['和食', '洋食', '中華', 'エスニック', 'その他']
genres.each do |name|
  Genre.find_or_create_by(name: name)
end

# 調理スタイル
cooking_styles = ['簡単', '本格的', '温かい', '冷たい']
cooking_styles.each do |name|
  CookingStyle.find_or_create_by(name: name)
end

# ヘルシーさ
healthiness_types = ['ヘルシー', 'こってり', '野菜多め', 'タンパク質重視']
healthiness_types.each do |name|
  HealthinessType.find_or_create_by(name: name)
end

puts "Attributes created!"

# 料理データの作成
puts "Creating foods..."

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
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['卵', 'ベーコン', '朝食'],
    spices: ['黒胡椒', 'パプリカ', 'ガーリックパウダー']
  },
  {
    name: 'パンケーキ',
    category: 'ガッツリ',
    time_of_days: ['朝', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['特別な日', 'リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['甘い', 'メープル', 'バター'],
    spices: ['バニラエッセンス', 'シナモン', 'ナツメグ']
  },
  {
    name: '焼き魚',
    category: 'ガッツリ',
    time_of_days: ['朝', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', '和風', '朝食'],
    spices: ['塩', '醤油', '生姜']
  },
  {
    name: 'フレンチトースト',
    category: 'ガッツリ',
    time_of_days: ['朝', 'おやつ'],
    seasons: ['春', '秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パン', '卵', '甘い'],
    spices: ['バニラエッセンス', 'シナモン', 'ナツメグ']
  },
  {
    name: 'チーズオムレツ',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['卵', 'チーズ', 'バター'],
    spices: ['黒胡椒', 'チャイブ', 'パセリ']
  },
  {
    name: 'ワッフル',
    category: 'ガッツリ',
    time_of_days: ['朝', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['甘い', 'バター', 'シロップ'],
    spices: ['バニラエッセンス', 'シナモン', 'ナツメグ']
  },
  {
    name: 'イングリッシュブレックファスト',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['卵', 'ソーセージ', 'ベーコン'],
    spices: ['黒胡椒', 'ハーブ', 'ガーリック']
  },
  {
    name: 'ホットサンド',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パン', 'チーズ', 'ハム'],
    spices: ['黒胡椒', 'マスタード', 'バター']
  },
  {
    name: 'クロワッサンサンド',
    category: 'ガッツリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的'],
    healthiness_types: ['こってり'],
    tags: ['クロワッサン', 'ハム', 'チーズ'],
    spices: ['黒胡椒', 'マヨネーズ', 'レタス']
  },
  {
    name: '牛丼',
    category: 'ガッツリ',
    time_of_days: ['朝', '昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['疲れた', '元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['牛肉', 'ご飯', '玉ねぎ'],
    spices: ['醤油', 'みりん', '生姜']
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
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['揚げ物', '豚肉', 'キャベツ'],
    spices: ['パン粉', '胡椒', 'ソース']
  },
  {
    name: 'ハンバーガー',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['牛肉', 'チーズ', 'パン'],
    spices: ['黒胡椒', 'オニオンパウダー', 'パプリカ']
  },
  {
    name: 'ラーメン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['疲れた', '元気'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['麺', 'スープ', 'チャーシュー'],
    spices: ['にんにく', '生姜', '胡椒']
  },
  {
    name: 'カレーライス',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['元気', '疲れた'],
    genres: ['その他'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['スパイス', 'ご飯', '野菜'],
    spices: ['カレーパウダー', 'ターメリック', 'クミン']
  },
  {
    name: 'チキンソテー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', 'ハーブ', 'ガーリック'],
    spices: ['ローズマリー', 'タイム', 'ガーリック']
  },
  {
    name: 'ピザ',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気', '特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['チーズ', 'トマト', 'パン生地'],
    spices: ['オレガノ', 'バジル', 'ガーリック']
  },
  {
    name: 'パスタボロネーゼ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パスタ', 'ミートソース', 'チーズ'],
    spices: ['オレガノ', 'バジル', 'ローズマリー']
  },
  {
    name: '唐揚げ',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['鶏肉', '揚げ物', 'にんにく'],
    spices: ['生姜', 'にんにく', '胡椒']
  },
  {
    name: 'ステーキ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['牛肉', '焼き肉', 'ガーリック'],
    spices: ['黒胡椒', 'ガーリック', 'ローズマリー']
  },
  {
    name: '親子丼',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['疲れた', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', '卵', 'ご飯'],
    spices: ['醤油', 'みりん', '出汁']
  },
  {
    name: 'ハンバーグ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['牛肉', '豚肉', 'ソース'],
    spices: ['黒胡椒', 'ナツメグ', 'オニオンパウダー']
  },
  {
    name: '焼きそば',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['麺', 'ソース', '野菜'],
    spices: ['ウスターソース', '青のり', 'かつお節']
  },
  {
    name: 'タコライス',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['ひき肉', 'チーズ', 'レタス'],
    spices: ['チリパウダー', 'クミン', 'パプリカ']
  },
  {
    name: 'オムライス',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気', 'リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['卵', 'ご飯', 'ケチャップ'],
    spices: ['ケチャップ', '黒胡椒', 'パセリ']
  },
  {
    name: 'ロコモコ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['ハンバーグ', '卵', 'ご飯'],
    spices: ['テリヤキソース', '黒胡椒', 'ガーリック']
  },
  {
    name: 'チキンカツ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり', 'タンパク質重視'],
    tags: ['鶏肉', '揚げ物', 'キャベツ'],
    spices: ['パン粉', '胡椒', 'ソース']
  },
  {
    name: 'エビフライ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['エビ', '揚げ物', 'タルタル'],
    spices: ['パン粉', 'レモン', 'タルタルソース']
  },
  {
    name: 'カツカレー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['とんかつ', 'カレー', 'ご飯'],
    spices: ['カレーパウダー', 'ソース', 'ガーリック']
  },
  {
    name: 'チャーハン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['ご飯', '卵', 'チャーシュー'],
    spices: ['醤油', 'ごま油', '胡椒']
  },
  {
    name: '麻婆豆腐',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['豆腐', 'ひき肉', '辛味'],
    spices: ['豆板醤', '花椒', 'にんにく']
  },
  {
    name: 'エビチリ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['エビ', 'チリソース', '野菜'],
    spices: ['豆板醤', 'ケチャップ', 'にんにく']
  },
  {
    name: '酢豚',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['豚肉', '野菜', '甘酢'],
    spices: ['酢', '砂糖', 'ケチャップ']
  },
  {
    name: '回鍋肉',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['豚肉', 'キャベツ', '味噌'],
    spices: ['甜面醤', '豆板醤', 'にんにく']
  },
  {
    name: '青椒肉絲',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['牛肉', 'ピーマン', 'たけのこ'],
    spices: ['オイスターソース', '醤油', 'ごま油']
  },
  {
    name: 'ビーフストロガノフ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['牛肉', 'クリーム', 'きのこ'],
    spices: ['パプリカ', 'サワークリーム', '黒胡椒']
  },
  {
    name: 'ムサカ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['茄子', 'ひき肉', 'チーズ'],
    spices: ['オレガノ', 'シナモン', 'ナツメグ']
  },
  {
    name: 'ラザニア',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パスタ', 'チーズ', 'ミートソース'],
    spices: ['バジル', 'オレガノ', 'ガーリック']
  },
  {
    name: 'パエリア',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['米', '魚介', 'サフラン'],
    spices: ['サフラン', 'パプリカ', 'ガーリック']
  },
  {
    name: 'リゾット',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['米', 'チーズ', 'バター'],
    spices: ['白ワイン', 'パルメザン', 'ハーブ']
  },
  {
    name: 'グラタン',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['チーズ', 'クリーム', 'オーブン'],
    spices: ['ナツメグ', '白胡椒', 'パルメザン']
  },
  {
    name: 'シチュー',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['野菜', 'クリーム', '煮込み'],
    spices: ['ローリエ', 'タイム', '白胡椒']
  },
  {
    name: 'ポークチョップ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['豚肉', 'ソテー', 'ハーブ'],
    spices: ['ローズマリー', 'セージ', 'ガーリック']
  },
  {
    name: 'ローストチキン',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', 'オーブン', 'ハーブ'],
    spices: ['ローズマリー', 'タイム', 'レモン']
  },
  {
    name: 'ラムチョップ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['羊肉', 'ハーブ', 'グリル'],
    spices: ['ローズマリー', 'ガーリック', 'ミント']
  },
  {
    name: 'カルボナーラ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パスタ', 'ベーコン', 'チーズ'],
    spices: ['黒胡椒', 'パルメザン', 'パセリ']
  },
  {
    name: 'アマトリチャーナ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パスタ', 'ベーコン', 'トマト'],
    spices: ['赤唐辛子', 'チーズ', 'バジル']
  },
  {
    name: 'ペスカトーレ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['パスタ', '魚介', 'トマト'],
    spices: ['ガーリック', 'バジル', '白ワイン']
  },
  {
    name: 'アラビアータ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['パスタ', 'トマト', '辛味'],
    spices: ['赤唐辛子', 'ガーリック', 'バジル']
  },
  {
    name: 'プッタネスカ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['パスタ', 'アンチョビ', 'オリーブ'],
    spices: ['ケッパー', 'ガーリック', 'オレガノ']
  },
  {
    name: 'スパゲッティ・アリオ・オリオ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['パスタ', 'ガーリック', 'オリーブオイル'],
    spices: ['ガーリック', '赤唐辛子', 'パセリ']
  },
  {
    name: 'ボンゴレ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['パスタ', 'あさり', '白ワイン'],
    spices: ['ガーリック', 'パセリ', '白ワイン']
  },
  {
    name: 'ミートボールパスタ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['パスタ', 'ミートボール', 'トマト'],
    spices: ['バジル', 'オレガノ', 'ガーリック']
  },
  {
    name: 'タコス',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['野菜多め'],
    tags: ['トルティーヤ', 'ひき肉', 'チーズ'],
    spices: ['チリパウダー', 'クミン', 'コリアンダー']
  },
  {
    name: 'ブリトー',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['野菜多め'],
    tags: ['トルティーヤ', 'チキン', 'チーズ'],
    spices: ['サルサソース', 'クミン', 'ライム']
  },
  {
    name: 'エンチラーダ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['トルティーヤ', 'チーズ', 'ソース'],
    spices: ['チリパウダー', 'クミン', 'パプリカ']
  },
  {
    name: 'ケサディーヤ',
    category: 'ガッツリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['トルティーヤ', 'チーズ', 'チキン'],
    spices: ['クミン', 'パプリカ', 'チリパウダー']
  },
  {
    name: 'ファヒータ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['チキン', 'ピーマン', '玉ねぎ'],
    spices: ['チリパウダー', 'クミン', 'ライム']
  },
  {
    name: 'ナチョス',
    category: 'ガッツリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['こってり'],
    tags: ['チップス', 'チーズ', 'ひき肉'],
    spices: ['サルサソース', 'チリパウダー', 'クミン']
  },
  {
    name: 'ガパオライス',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['ひき肉', 'バジル', '目玉焼き'],
    spices: ['ナンプラー', '唐辛子', 'バジル']
  },
  {
    name: 'パッタイ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['米麺', 'エビ', 'もやし'],
    spices: ['ナンプラー', 'タマリンド', 'ピーナッツ']
  },
  {
    name: 'グリーンカレー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['ココナッツミルク', '鶏肉', '野菜'],
    spices: ['グリーンカレーペースト', 'ココナッツ', 'バジル']
  },
  {
    name: 'トムヤムクン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['エビ', 'きのこ', 'スープ'],
    spices: ['レモングラス', 'ガランガル', 'ライム']
  },
  {
    name: 'ビリヤニ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['バスマティ米', 'チキン', 'スパイス'],
    spices: ['サフラン', 'ガラムマサラ', 'カルダモン']
  },
  {
    name: 'タンドリーチキン',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', 'ヨーグルト', 'スパイス'],
    spices: ['ガラムマサラ', 'ターメリック', 'パプリカ']
  },
  {
    name: 'バターチキンカレー',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['鶏肉', 'トマト', 'クリーム'],
    spices: ['ガラムマサラ', 'フェヌグリーク', 'ジンジャー']
  },
  {
    name: 'ナン',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['パン', 'カレー', 'バター'],
    spices: ['ガーリック', 'コリアンダー', 'ニゲラ']
  },
  {
    name: 'キーマカレー',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏', '秋'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['ひき肉', '野菜', 'スパイス'],
    spices: ['ガラムマサラ', 'コリアンダー', 'クミン']
  },
  {
    name: 'サモサ',
    category: 'ガッツリ',
    time_of_days: ['おやつ'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['じゃがいも', '揚げ物', 'スパイス'],
    spices: ['クミン', 'コリアンダー', 'ターメリック']
  },
  {
    name: 'チキンティッカ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', 'ヨーグルト', 'グリル'],
    spices: ['パプリカ', 'ガラムマサラ', 'ジンジャー']
  },
  {
    name: 'ダル',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['レンズ豆', 'スパイス', 'カレー'],
    spices: ['ターメリック', 'クミン', 'コリアンダー']
  },
  {
    name: 'プルコギ',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['秋', '冬'],
    moods: ['元気'],
    genres: ['エスニック'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['牛肉', '野菜', '甘辛'],
    spices: ['コチュジャン', 'ごま油', 'にんにく']
  },
  {
    name: 'チキン南蛮',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['鶏肉', 'タルタル', '甘酢'],
    spices: ['酢', 'みりん', 'タルタルソース']
  },
  {
    name: 'エビマヨ',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['元気'],
    genres: ['中華'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['エビ', 'マヨネーズ', '揚げ物'],
    spices: ['マヨネーズ', 'レモン', 'パセリ']
  },
  {
    name: '天ぷら',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['揚げ物', '野菜', '海老'],
    spices: ['天つゆ', '大根おろし', '生姜']
  },
  {
    name: '寿司',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', 'ご飯', '海苔'],
    spices: ['わさび', '醤油', 'ガリ']
  },
  {
    name: '刺身',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', '刺身', 'わさび'],
    spices: ['わさび', '醤油', 'しそ']
  },
  {
    name: 'すき焼き',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['牛肉', '野菜', '鍋'],
    spices: ['醤油', 'みりん', '砂糖']
  },
  {
    name: 'しゃぶしゃぶ',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['牛肉', '野菜', '鍋'],
    spices: ['ポン酢', 'ごまだれ', 'もみじおろし']
  },
  {
    name: '焼き鳥',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', '串焼き', 'タレ'],
    spices: ['タレ', '塩', '七味']
  },
  {
    name: 'うな重',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['うなぎ', 'ご飯', 'タレ'],
    spices: ['蒲焼きのタレ', '山椒', 'みりん']
  },
  {
    name: '海鮮丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', 'ご飯', '海苔'],
    spices: ['わさび', '醤油', 'のり']
  },
  {
    name: 'かつ丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['とんかつ', '卵', 'ご飯'],
    spices: ['醤油', 'みりん', '出汁']
  },
  {
    name: '天丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['天ぷら', 'ご飯', 'タレ'],
    spices: ['天丼のタレ', '醤油', 'みりん']
  },
  {
    name: '鉄火丼',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['まぐろ', 'ご飯', '海苔'],
    spices: ['わさび', '醤油', 'しそ']
  },
  {
    name: 'ちらし寿司',
    category: 'ガッツリ',
    time_of_days: ['昼'],
    seasons: ['春'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー'],
    tags: ['魚', 'ご飯', '野菜'],
    spices: ['酢', '醤油', 'わさび']
  },
  {
    name: '手巻き寿司',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['特別な日'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー'],
    tags: ['魚', '海苔', 'ご飯'],
    spices: ['わさび', '醤油', 'ガリ']
  },
  {
    name: 'おでん',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['煮込み', '大根', 'こんにゃく'],
    spices: ['出汁', '醤油', 'からし']
  },
  {
    name: '肉じゃが',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['じゃがいも', '牛肉', '煮物'],
    spices: ['醤油', 'みりん', '出汁']
  },
  {
    name: 'きんぴらごぼう',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['ごぼう', '人参', '炒め物'],
    spices: ['醤油', 'みりん', '七味']
  },
  {
    name: 'ぶり大根',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['ぶり', '大根', '煮物'],
    spices: ['醤油', 'みりん', '生姜']
  },
  {
    name: '筑前煮',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['野菜多め'],
    tags: ['鶏肉', '野菜', '煮物'],
    spices: ['醤油', 'みりん', '出汁']
  },
  {
    name: '豚の角煮',
    category: 'ガッツリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['こってり'],
    tags: ['豚肉', '煮込み', '甘辛'],
    spices: ['醤油', 'みりん', '砂糖']
  },
  {
    name: '鶏の照り焼き',
    category: 'ガッツリ',
    time_of_days: ['昼', '夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['元気'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['タンパク質重視'],
    tags: ['鶏肉', '照り焼き', 'タレ'],
    spices: ['醤油', 'みりん', '生姜']
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
    healthiness_types: ['ヘルシー'],
    tags: ['果物', 'ヨーグルト', '甘い'],
    spices: ['はちみつ', 'バニラ', 'シナモン']
  },
  {
    name: 'おにぎり',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー'],
    tags: ['ご飯', '海苔', 'シンプル'],
    spices: ['塩', '醤油', 'かつお節']
  },
  {
    name: 'スムージーボウル',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['果物', '野菜', 'ナッツ'],
    spices: ['チアシード', 'ココナッツ', 'アガベ']
  },
  {
    name: 'トースト',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['パン', 'バター', 'ジャム'],
    spices: ['バター', 'ジャム', 'はちみつ']
  },
  {
    name: '納豆ご飯',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['納豆', 'ご飯', '和風'],
    spices: ['醤油', 'からし', 'ネギ']
  },
  {
    name: 'シリアル',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['穀物', '牛乳', '果物'],
    spices: ['はちみつ', 'ナッツ', 'ドライフルーツ']
  },
  {
    name: 'オートミール',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['オーツ', '牛乳', '果物'],
    spices: ['シナモン', 'はちみつ', 'ナッツ']
  },
  {
    name: 'アサイーボウル',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['アサイー', '果物', 'グラノーラ'],
    spices: ['ココナッツ', 'チアシード', 'はちみつ']
  },
  {
    name: 'プレーンヨーグルト',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['ヨーグルト', 'プレーン', 'シンプル'],
    spices: ['はちみつ', 'ナッツ', 'ジャム']
  },
  {
    name: 'バナナスムージー',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['バナナ', '牛乳', '甘い'],
    spices: ['はちみつ', 'バニラ', 'シナモン']
  },
  {
    name: '卵かけご飯',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '秋', '冬'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['卵', 'ご飯', 'シンプル'],
    spices: ['醤油', 'ネギ', 'のり']
  },
  {
    name: 'おかゆ',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['疲れた', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['ご飯', 'シンプル', '消化'],
    spices: ['塩', '梅干し', 'のり']
  },
  {
    name: 'みそ汁',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['味噌', '豆腐', 'わかめ'],
    spices: ['味噌', '出汁', 'ネギ']
  },
  {
    name: '豆乳',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['豆乳', 'プレーン', 'シンプル'],
    spices: ['はちみつ', 'きな粉', 'バニラ']
  },
  {
    name: 'フルーツサラダ',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['果物', 'カラフル', 'ビタミン'],
    spices: ['レモン', 'ミント', 'はちみつ']
  },
  {
    name: 'グリーンスムージー',
    category: 'サッパリ',
    time_of_days: ['朝'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['緑の野菜', '果物', 'デトックス'],
    spices: ['レモン', 'ジンジャー', 'ミント']
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
    healthiness_types: ['ヘルシー'],
    tags: ['そば', 'つゆ', 'ネギ'],
    spices: ['わさび', 'ネギ', '海苔']
  },
  {
    name: 'サラダボウル',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['野菜', 'ドレッシング', 'ナッツ'],
    spices: ['オリーブオイル', 'レモン', 'ハーブ']
  },
  {
    name: '冷やし中華',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['中華'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['麺', '野菜', '酸味'],
    spices: ['酢', '醤油', 'ごま']
  },
  {
    name: 'ポケボウル',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', 'アボカド', 'ご飯'],
    spices: ['醤油', 'わさび', 'ごま']
  },
  {
    name: 'お茶漬け',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['疲れた', 'リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['ご飯', 'お茶', 'のり'],
    spices: ['わさび', '海苔', '梅干し']
  },
  {
    name: 'うどん',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['疲れた'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['麺', 'だし', 'ネギ'],
    spices: ['出汁', 'ネギ', '七味']
  },
  {
    name: '野菜炒め',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['野菜', '炒め物'],
    spices: ['ごま油', '醤油', 'にんにく']
  },
  {
    name: '湯豆腐',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['豆腐', '昆布', '鍋'],
    spices: ['ポン酢', '昆布', 'ネギ']
  },
  {
    name: 'フルーツサンド',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['果物', 'パン', 'クリーム'],
    spices: ['バニラ', 'はちみつ', 'ミント']
  },
  {
    name: '抹茶アイス',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['抹茶', '甘い', 'アイス'],
    spices: ['抹茶', 'きな粉', 'あんこ']
  },
  {
    name: 'そうめん',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['そうめん', 'つゆ', 'ネギ'],
    spices: ['つゆ', 'ネギ', '生姜']
  },
  {
    name: '冷奴',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['豆腐', 'シンプル', '冷たい'],
    spices: ['醤油', 'ネギ', 'かつお節']
  },
  {
    name: 'ひやむぎ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['ひやむぎ', 'つゆ', 'きゅうり'],
    spices: ['つゆ', 'ネギ', 'みょうが']
  },
  {
    name: 'ガスパチョ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['トマト', '冷製スープ', 'パン'],
    spices: ['オリーブオイル', 'ビネガー', 'ガーリック']
  },
  {
    name: 'コンソメスープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['スープ', 'クリア', '野菜'],
    spices: ['コンソメ', 'パセリ', 'セロリ']
  },
  {
    name: 'ミネストローネ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['トマト', '野菜', 'スープ'],
    spices: ['バジル', 'オレガノ', 'ガーリック']
  },
  {
    name: 'クラムチャウダー',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['あさり', 'じゃがいも', 'スープ'],
    spices: ['タイム', 'ベイリーフ', '白胡椒']
  },
  {
    name: 'オニオンスープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['秋', '冬'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['玉ねぎ', 'チーズ', 'スープ'],
    spices: ['白ワイン', 'タイム', 'グリュイエール']
  },
  {
    name: 'わかめスープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['わかめ', 'スープ', 'ネギ'],
    spices: ['中華だし', 'ごま油', 'ネギ']
  },
  {
    name: '春雨スープ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['中華'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['春雨', 'スープ', '野菜'],
    spices: ['中華だし', 'ごま油', 'しょうが']
  },
  {
    name: 'すまし汁',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '温かい'],
    healthiness_types: ['ヘルシー'],
    tags: ['だし', 'きれい', 'シンプル'],
    spices: ['出汁', '醤油', 'みつば']
  },
  {
    name: '茶碗蒸し',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['春', '秋', '冬'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['卵', '出汁', '蒸し物'],
    spices: ['出汁', '醤油', 'みりん']
  },
  {
    name: 'たまご豆腐',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['卵', '豆腐', '冷たい'],
    spices: ['出汁', '醤油', 'わさび']
  },
  {
    name: 'ごま豆腐',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['ごま', '豆腐', '上品'],
    spices: ['わさび', '醤油', 'ねぎ']
  },
  {
    name: '胡麻ドレッシングサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏', '秋'],
    moods: ['集中したい'],
    genres: ['和食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['サラダ', 'ごまドレ', '野菜'],
    spices: ['ごまドレッシング', 'ごま', '海苔']
  },
  {
    name: 'シーザーサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['レタス', 'チーズ', 'クルトン'],
    spices: ['シーザードレッシング', 'パルメザン', 'レモン']
  },
  {
    name: 'コブサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['レタス', 'チーズ', 'ベーコン'],
    spices: ['ブルーチーズドレッシング', 'アボカド', 'トマト']
  },
  {
    name: 'グリーンサラダ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['レタス', '緑の野菜', 'シンプル'],
    spices: ['オリーブオイル', 'レモン', 'ハーブ']
  },
  {
    name: 'カプレーゼ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー'],
    tags: ['トマト', 'モッツァレラ', 'バジル'],
    spices: ['バジル', 'オリーブオイル', 'バルサミコ']
  },
  {
    name: 'タブレ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', '野菜多め'],
    tags: ['ブルグル', 'パセリ', 'トマト'],
    spices: ['レモン', 'オリーブオイル', 'ミント']
  },
  {
    name: 'ファラフェル',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['ひよこ豆', '揚げ物', 'ハーブ'],
    spices: ['クミン', 'コリアンダー', 'パセリ']
  },
  {
    name: 'フムス',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['集中したい'],
    genres: ['エスニック'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['ひよこ豆', 'ペースト', 'パン'],
    spices: ['タヒニ', 'レモン', 'ガーリック']
  },
  {
    name: 'バババガヌーシュ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['本格的'],
    healthiness_types: ['ヘルシー'],
    tags: ['なす', 'ペースト', 'パン'],
    spices: ['タヒニ', 'レモン', 'ガーリック']
  },
  {
    name: 'ツァジキ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー'],
    tags: ['ヨーグルト', 'きゅうり', 'ディップ'],
    spices: ['ディル', 'ガーリック', 'レモン']
  },
  {
    name: 'ブルスケッタ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー'],
    tags: ['パン', 'トマト', 'バジル'],
    spices: ['バジル', 'ガーリック', 'オリーブオイル']
  },
  {
    name: 'クロスティーニ',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['春', '夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単'],
    healthiness_types: ['ヘルシー'],
    tags: ['パン', 'トッピング', '前菜'],
    spices: ['ハーブ', 'チーズ', 'オリーブオイル']
  },
  {
    name: 'アクアパッツァ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '温かい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', 'あさり', 'オリーブ'],
    spices: ['白ワイン', 'ガーリック', 'パセリ']
  },
  {
    name: 'セビーチェ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['エスニック'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', 'ライム', '生'],
    spices: ['ライム', 'コリアンダー', '玉ねぎ']
  },
  {
    name: 'カルパッチョ',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['特別な日'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー', 'タンパク質重視'],
    tags: ['魚', '生', 'オリーブオイル'],
    spices: ['オリーブオイル', 'レモン', 'ルッコラ']
  },
  {
    name: 'マリネ',
    category: 'サッパリ',
    time_of_days: ['昼'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['野菜', '酢', '漬け物'],
    spices: ['ビネガー', 'ハーブ', 'オリーブオイル']
  },
  {
    name: 'ピクルス',
    category: 'サッパリ',
    time_of_days: ['昼', 'おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['野菜', '酢', '漬け物'],
    spices: ['ディル', 'マスタードシード', 'ビネガー']
  },
  {
    name: '酢の物',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['きゅうり', '酢', '和風'],
    spices: ['酢', '砂糖', '醤油']
  },
  {
    name: '浅漬け',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['野菜', '塩', '漬け物'],
    spices: ['塩', '昆布', '生姜']
  },
  {
    name: 'もずく酢',
    category: 'サッパリ',
    time_of_days: ['夜'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['もずく', '酢', '海藻'],
    spices: ['酢', '砂糖', '生姜']
  },
  {
    name: 'ところてん',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['寒天', 'のど越し', '夏'],
    spices: ['酢醤油', '砂糖', 'からし']
  },
  {
    name: '水羊羹',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['あんこ', '寒天', '甘い'],
    spices: ['小豆', '砂糖', '寒天']
  },
  {
    name: 'かき氷',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['和食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['氷', 'シロップ', '夏'],
    spices: ['シロップ', '練乳', 'フルーツ']
  },
  {
    name: 'アイスクリーム',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['簡単', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['アイス', '甘い', '冷たい'],
    spices: ['バニラ', 'チョコレート', 'ストロベリー']
  },
  {
    name: 'ソルベ',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['果物', 'アイス', 'さっぱり'],
    spices: ['レモン', 'ミント', 'ライム']
  },
  {
    name: 'ジェラート',
    category: 'サッパリ',
    time_of_days: ['おやつ'],
    seasons: ['夏'],
    moods: ['リラックス'],
    genres: ['洋食'],
    cooking_styles: ['本格的', '冷たい'],
    healthiness_types: ['ヘルシー'],
    tags: ['アイス', '濃厚', 'イタリア'],
    spices: ['バニラ', 'ピスタチオ', 'ストロベリー']
  }
]

foods_data.each do |food_data|
  food = Food.find_or_create_by(name: food_data[:name]) do |f|
    f.category = food_data[:category]
    f.tags = food_data[:tags]
    f.spices = food_data[:spices] || []
  end

  # 関連データの設定
  food_data[:time_of_days]&.each do |time_name|
    time_of_day = TimeOfDay.find_by(name: time_name)
    food.food_time_of_days.find_or_create_by(time_of_day: time_of_day) if time_of_day
  end

  food_data[:seasons]&.each do |season_name|
    season = Season.find_by(name: season_name)
    food.food_seasons.find_or_create_by(season: season) if season
  end

  food_data[:moods]&.each do |mood_name|
    mood = Mood.find_by(name: mood_name)
    food.food_moods.find_or_create_by(mood: mood) if mood
  end

  food_data[:genres]&.each do |genre_name|
    genre = Genre.find_by(name: genre_name)
    food.food_genres.find_or_create_by(genre: genre) if genre
  end

  food_data[:cooking_styles]&.each do |style_name|
    cooking_style = CookingStyle.find_by(name: style_name)
    food.food_cooking_styles.find_or_create_by(cooking_style: cooking_style) if cooking_style
  end

  food_data[:healthiness_types]&.each do |health_name|
    healthiness_type = HealthinessType.find_by(name: health_name)
    food.food_healthiness_types.find_or_create_by(healthiness_type: healthiness_type) if healthiness_type
  end
end

puts "Foods created!"
puts "Seed data creation completed!"