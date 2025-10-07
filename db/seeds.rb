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

  # ガッツリ系 - 昼食
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
    name: 'ボロネーゼ',
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
    spices: ['三つ葉', '七味', '出汁']
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
    spices: ['醤油', 'からし', 'みょうが']
  },

  # サッパリ系 - 昼食
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
    spices: ['酢', 'からし', 'ごま']
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

  # サッパリ系 - 夜食
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
    spices: ['ポン酢', '柚子胡椒', 'ネギ']
  },

  # サッパリ系 - おやつ
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