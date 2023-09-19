# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'sample@admin.com',
   password: 'shiro_map'
)
Member.create!(
   nick_name: "わたる",
   email: 'wataru@sample.com',
   password: 'shiro_wataru'
)

Shiro.create!(
  id: 1,
  name: "名古屋城",
  detail: "名古屋の誇り、織田信長の築城として知られ、豊臣秀吉や徳川家康の手に渡った歴史的要塞。美しい金の鯱と鮮やかな白壁が特徴で、広大な庭園と歴史博物館も楽しめます。",
  address: "愛知県名古屋市中区本丸１−１",

  display_status: true
   )
Shiro.create!(
  id: 2,
  name: "岐阜城",
  detail: "岐阜市の中心に聳え立つ、岐阜のシンボル。織田信長の弟、織田信秀が築いた城で、重要文化財として価値が高い。城内には歴史博物館があり、武士文化や岐阜の歴史を学べます。",
  address: "岐阜県岐阜市金華山 天守閣18番地",

  display_status: true,
   )

Shiro.create!(
  id: 3,
  name: "犬山城",
  detail: "愛知県犬山市に佇む、美しい山城。桜の名所で知られ、四季折々の風景が楽しめます。歴史的建造物としても貴重で、博物館があり、武士の生活を垣間見ることができます。",
  address: "愛知県犬山市犬山北古券６５−２",

  display_status: true
   )

Shiro.create!(
  id: 4,
  name: "岡崎城",
  detail: "愛知県岡崎市に位置し、徳川家康が築城。美しい堀や庭園があり、城内には家康ゆかりの品々が展示されています。周辺には歴史的なスポットや文化施設も多く、訪れる価値あり。",
  address: "愛知県岡崎市康生町５６１−１",

  display_status: true
   )

Shiro.create!(
  id: 5,
  name: "浜松城",
  detail: "浜松市にある徳川家康ゆかりの城。戦国時代から江戸時代にかけての歴史が息づく場所。美しい城壁や庭園、博物館があり、城内からは浜名湖が一望できます。",
  address: "静岡県浜松市中区元城町１００−２",

  display_status: true
   )

Shiro.create!(
  id: 6,
  name: "大垣城",
  detail: "大垣城は、戦国時代の日本において、織田信長の家臣である羽柴秀吉（後の豊臣秀吉）が、美濃国（現在の岐阜県）を統一し、その拠点として築かれました。この城は、その美しい天守閣と美しい庭園で知られており、日本の城郭の中でも特に重要な存在とされています。",
  address: "岐阜県大垣市郭町２丁目５２",

  display_status: true
   )