# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seedの実行を開始"

puts "shiroデータの読み込み開始"

Shiro.find_or_create_by!(name: "名古屋城") do |shiro|
  shiro.id = 1,
  shiro.detail = "名古屋の誇り、織田信長の築城として知られ、豊臣秀吉や徳川家康の手に渡った歴史的要塞。美しい金の鯱と鮮やかな白壁が特徴で、広大な庭園と歴史博物館も楽しめます。",
  shiro.address = "愛知県名古屋市中区本丸１−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岐阜城") do |shiro|
  shiro.id = 2,
  shiro.detail = "岐阜市の中心に聳え立つ、岐阜のシンボル。織田信長の弟、織田信秀が築いた城で、重要文化財として価値が高い。城内には歴史博物館があり、武士文化や岐阜の歴史を学べます。",
  shiro.address = "岐阜県岐阜市金華山 天守閣18番地",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "犬山城") do |shiro|
  shiro.id = 3,
  shiro.detail = "愛知県犬山市に佇む、美しい山城。桜の名所で知られ、四季折々の風景が楽しめます。歴史的建造物としても貴重で、博物館があり、武士の生活を垣間見ることができます。",
  shiro.address = "愛知県犬山市犬山北古券６５−２",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岡崎城") do |shiro|
  shiro.id = 4,
  shiro.detail = "愛知県岡崎市に位置し、徳川家康が築城。美しい堀や庭園があり、城内には家康ゆかりの品々が展示されています。周辺には歴史的なスポットや文化施設も多く、訪れる価値あり。",
  shiro.address = "愛知県岡崎市康生町５６１−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "浜松城") do |shiro|
  shiro.id = 5,
  shiro.detail = "浜松市にある徳川家康ゆかりの城。戦国時代から江戸時代にかけての歴史が息づく場所。美しい城壁や庭園、博物館があり、城内からは浜名湖が一望できます。",
  shiro.address = "静岡県浜松市中区元城町１００−２",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大垣城") do |shiro|
  shiro.id = 6,
  shiro.detail = "大垣城は、戦国時代の日本において、織田信長の家臣である羽柴秀吉（後の豊臣秀吉）が、美濃国（現在の岐阜県）を統一し、その拠点として築かれました。この城は、その美しい天守閣と美しい庭園で知られており、日本の城郭の中でも特に重要な存在とされています。",
  shiro.address = "岐阜県大垣市郭町２丁目５２",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "彦根城") do |shiro|
  shiro.id = 7,
  shiro.detail = "彦根城は、滋賀県にある美しい日本の城です。逆さま彦根城としても知られ、堀と石垣で囲まれた姿が印象的です。城内には歴史的な建造物や美しい庭園があり、彦根市のシンボルとして親しまれています。",
  shiro.address = "滋賀県彦根市金亀町１−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松本城") do |shiro|
  shiro.id = 8,
  shiro.detail = "松本城は、信州の宝とも呼ばれる美しい天守閣を持つ城です。日本アルプスの山々に囲まれた風光明媚な場所に位置し、城内には歴史的な展示物が多く展示されています。",
  shiro.address = "長野県松本市丸の内４−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "和歌山城") do |shiro|
  shiro.id = 9,
  shiro.detail = "和歌山城は、和歌山市の中心にそびえる風格ある城です。城内には和歌山藩の歴史を伝える多くの文化財や資料が展示されており、城からの眺望も素晴らしいです。",
  shiro.address = "和歌山県和歌山市一番丁３",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松江城") do |shiro|
  shiro.id = 10,
  shiro.detail = "松江城は、島根県にある美しい城で、日本の天守閣の中でも珍しい木造のものです。城内には歴史的な展示物や松江の歴史を紹介する施設があります。",
  shiro.address = "島根県松江市殿町１−５",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "広島城") do |shiro|
  shiro.id = 11,
  shiro.detail = "広島城は、広島市の中心に位置し、戦国時代からの歴史的な城です。現在の建造物は再建されたものですが、城内には歴史的な資料や美しい庭園があります。",
  shiro.address = "広島県広島市中区基町２１−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "高知城") do |shiro|
  shiro.id = 12,
  shiro.detail = "高知城は、四国地方にある歴史的な城で、土佐藩の本拠地でした。城内には土佐の歴史と文化を紹介する施設があり、城の周りには美しい桜の名所もあります。",
  shiro.address = "高知県高知市丸ノ内１丁目２−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大阪城") do |shiro|
  shiro.id = 13,
  shiro.detail = "大阪城は、大阪市内にそびえる印象的な城で、大阪のシンボルとして親しまれています。美しい外観と広大な敷地には多くの歴史的な資料や博物館があります。",
  shiro.address = "大阪府大阪市中央区大阪城１−１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "福山城") do |shiro|
  shiro.id = 14,
  shiro.detail = "福山城は、広島県福山市にある美しい城で、周辺には庭園が広がります。城内には歴史的な建造物や福山市の歴史を紹介する展示物があります。",
  shiro.address = "広島県福山市丸之内１丁目８−３９",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "山形城") do |shiro|
  shiro.id = 15,
  shiro.detail = "山形城は、日本の山形市に位置する歴史的な城です。この城は、戦国時代から江戸時代にかけて築かれ、最初は伊達政宗によって建てられました。山形城は美しい石垣と堀を特徴とし、現在では城址公園として整備され、訪れる人々に歴史と風光明媚な景色を楽しませています。",
  shiro.address = "山形県山形市霞城町１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "弘前城") do |shiro|
  shiro.id = 16,
  shiro.detail = "弘前城は、青森県弘前市にある日本の城で、津軽藩の拠点でした。江戸時代初期に建設され、特に美しい桜の名所として有名です。弘前城は石垣や天守閣が印象的で、四季折々の風景を楽しむことができる公園として、多くの観光客に訪れられています。",
  shiro.address = "青森県弘前市下白銀町１",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "盛岡城") do |shiro|
  shiro.id = 17,
  shiro.detail = "盛岡城は岩手県盛岡市にある城で、南部氏の拠点として知られています。この城は江戸時代初期に築かれ、美しい石垣や堀を特徴としています。現在は城址公園として整備され、歴史的な建造物や庭園が保存されています。",
  shiro.address = "岩手県盛岡市内丸１−３７",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "仙台城") do |shiro|
  shiro.id = 18,
  shiro.detail = "仙台城は、宮城県仙台市に位置し、伊達政宗によって建設された歴史的な城です。この城は江戸時代初期に建てられ、美しい天守閣や庭園があります。仙台城は宮城県のシンボルとして親しまれ、多くの観光客が訪れます。",
  shiro.address = "宮城県仙台市青葉区川内",
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "鶴ヶ城") do |shiro|
  shiro.id = 19,
  shiro.detail = "鶴ヶ城は、福岡県北九州市八幡東区にある城で、戦国時代に築かれました。この城は日本三大名城の一つとされ、その美しい石垣や城内の歴史的な建造物が訪れる人々を魅了しています。鶴ヶ城からは市街地と海を一望でき、その景色は訪れる価値があります。",
  shiro.address = "福島県会津若松市追手町１−１",
  shiro.display_status = true
end

puts "shiroデータの読み込み完了"
puts "管理者、会員データの読み込み開始"

Admin.create!(
   email: 'sample@admin.com',
   password: ENV['ADMIN_PASSWORD']
  )

Member.create!(
   nick_name: "わたる",
   email: 'wataru@sample.com',
   password: ENV['MEMBER_PASSWORD']
)

puts "管理者、会員データの読み込み完了"

puts "seedの実行が完了しました"