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
  shiro.id = 1
  shiro.detail = "名古屋の誇り、織田信長の築城として知られ、豊臣秀吉や徳川家康の手に渡った歴史的要塞。美しい金の鯱と鮮やかな白壁が特徴で、広大な庭園と歴史博物館も楽しめます。"
  shiro.address = "愛知県名古屋市中区本丸１−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岐阜城") do |shiro|
  shiro.id = 2
  shiro.detail = "岐阜市の中心に聳え立つ、岐阜のシンボル。織田信長の弟、織田信秀が築いた城で、重要文化財として価値が高い。城内には歴史博物館があり、武士文化や岐阜の歴史を学べます。"
  shiro.address = "岐阜県岐阜市金華山 天守閣18番地"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "犬山城") do |shiro|
  shiro.id = 3
  shiro.detail = "愛知県犬山市に佇む、美しい山城。桜の名所で知られ、四季折々の風景が楽しめます。歴史的建造物としても貴重で、博物館があり、武士の生活を垣間見ることができます。"
  shiro.address = "愛知県犬山市犬山北古券６５−２"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岡崎城") do |shiro|
  shiro.id = 4
  shiro.detail = "愛知県岡崎市に位置し、徳川家康が築城。美しい堀や庭園があり、城内には家康ゆかりの品々が展示されています。周辺には歴史的なスポットや文化施設も多く、訪れる価値あり。"
  shiro.address = "愛知県岡崎市康生町５６１−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "浜松城") do |shiro|
  shiro.id = 5
  shiro.detail = "浜松市にある徳川家康ゆかりの城。戦国時代から江戸時代にかけての歴史が息づく場所。美しい城壁や庭園、博物館があり、城内からは浜名湖が一望できます。"
  shiro.address = "静岡県浜松市中区元城町１００−２"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大垣城") do |shiro|
  shiro.id = 6
  shiro.detail = "大垣城は、戦国時代の日本において、織田信長の家臣である羽柴秀吉（後の豊臣秀吉）が、美濃国（現在の岐阜県）を統一し、その拠点として築かれました。この城は、その美しい天守閣と美しい庭園で知られており、日本の城郭の中でも特に重要な存在とされています。"
  shiro.address = "岐阜県大垣市郭町２丁目５２"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "彦根城") do |shiro|
  shiro.id = 7
  shiro.detail = "彦根城は、滋賀県にある美しい日本の城です。逆さま彦根城としても知られ、堀と石垣で囲まれた姿が印象的です。城内には歴史的な建造物や美しい庭園があり、彦根市のシンボルとして親しまれています。"
  shiro.address = "滋賀県彦根市金亀町１−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松本城") do |shiro|
  shiro.id = 8
  shiro.detail = "松本城は、信州の宝とも呼ばれる美しい天守閣を持つ城です。日本アルプスの山々に囲まれた風光明媚な場所に位置し、城内には歴史的な展示物が多く展示されています。"
  shiro.address = "長野県松本市丸の内４−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "和歌山城") do |shiro|
  shiro.id = 9
  shiro.detail = "和歌山城は、和歌山市の中心にそびえる風格ある城です。城内には和歌山藩の歴史を伝える多くの文化財や資料が展示されており、城からの眺望も素晴らしいです。"
  shiro.address = "和歌山県和歌山市一番丁３"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松江城") do |shiro|
  shiro.id = 10
  shiro.detail = "松江城は、島根県にある美しい城で、日本の天守閣の中でも珍しい木造のものです。城内には歴史的な展示物や松江の歴史を紹介する施設があります。"
  shiro.address = "島根県松江市殿町１−５"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "広島城") do |shiro|
  shiro.id = 11
  shiro.detail = "広島城は、広島市の中心に位置し、戦国時代からの歴史的な城です。現在の建造物は再建されたものですが、城内には歴史的な資料や美しい庭園があります。"
  shiro.address = "広島県広島市中区基町２１−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "高知城") do |shiro|
  shiro.id = 12
  shiro.detail = "高知城は、四国地方にある歴史的な城で、土佐藩の本拠地でした。城内には土佐の歴史と文化を紹介する施設があり、城の周りには美しい桜の名所もあります。"
  shiro.address = "高知県高知市丸ノ内１丁目２−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大阪城") do |shiro|
  shiro.id = 13
  shiro.detail = "大阪城は、大阪市内にそびえる印象的な城で、大阪のシンボルとして親しまれています。美しい外観と広大な敷地には多くの歴史的な資料や博物館があります。"
  shiro.address = "大阪府大阪市中央区大阪城１−１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "福山城") do |shiro|
  shiro.id = 14
  shiro.detail = "福山城は、広島県福山市にある美しい城で、周辺には庭園が広がります。城内には歴史的な建造物や福山市の歴史を紹介する展示物があります。"
  shiro.address = "広島県福山市丸之内１丁目８−３９"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "山形城") do |shiro|
  shiro.id = 15
  shiro.detail = "山形城は、日本の山形市に位置する歴史的な城です。この城は、戦国時代から江戸時代にかけて築かれ、最初は伊達政宗によって建てられました。山形城は美しい石垣と堀を特徴とし、現在では城址公園として整備され、訪れる人々に歴史と風光明媚な景色を楽しませています。"
  shiro.address = "山形県山形市霞城町１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "弘前城") do |shiro|
  shiro.id = 16
  shiro.detail = "弘前城は、青森県弘前市にある日本の城で、津軽藩の拠点でした。江戸時代初期に建設され、特に美しい桜の名所として有名です。弘前城は石垣や天守閣が印象的で、四季折々の風景を楽しむことができる公園として、多くの観光客に訪れられています。"
  shiro.address = "青森県弘前市下白銀町１"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "盛岡城") do |shiro|
  shiro.id = 17
  shiro.detail = "盛岡城は岩手県盛岡市にある城で、南部氏の拠点として知られています。この城は江戸時代初期に築かれ、美しい石垣や堀を特徴としています。現在は城址公園として整備され、歴史的な建造物や庭園が保存されています。"
  shiro.address = "岩手県盛岡市内丸１−３７"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "仙台城") do |shiro|
  shiro.id = 18
  shiro.detail = "仙台城は、宮城県仙台市に位置し、伊達政宗によって建設された歴史的な城です。この城は江戸時代初期に建てられ、美しい天守閣や庭園があります。仙台城は宮城県のシンボルとして親しまれ、多くの観光客が訪れます。"
  shiro.address = "宮城県仙台市青葉区川内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "鶴ヶ城") do |shiro|
  shiro.id = 19
  shiro.detail = "鶴ヶ城は、福岡県北九州市八幡東区にある城で、戦国時代に築かれました。この城は日本三大名城の一つとされ、その美しい石垣や城内の歴史的な建造物が訪れる人々を魅了しています。鶴ヶ城からは市街地と海を一望でき、その景色は訪れる価値があります。"
  shiro.address = "福島県会津若松市追手町１−１"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "根室半島チャシ跡群") do |shiro|
  shiro.detail = "根室半島に広がるチャシ跡群は、アイヌ民族によって築かれた古代の防御施設であり、その歴史的な価値と美しい景観が訪問者を魅了します。この遺跡はアイヌ文化の一部であり、文化遺産として保護されています。"
  shiro.address = "北海道根室市根室半島一帯"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "五稜郭") do |shiro|
  shiro.detail = "五稜郭は、日本の歴史において重要な役割を果たした要塞で、幕末の動乱期における戦闘の舞台として有名です。現在、五稜郭公園として一般に公開されており、その歴史的価値と美しい星形の要塞設計が称賛されています。"
  shiro.address = "北海道函館市函館市五稜郭町本通1"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "松前城") do |shiro|
  shiro.detail = "松前城は、北海道の松前地域に位置し、日本の歴史的な城の一つです。この城は江戸時代に栄え、その美しい庭園や木造建築物が訪問者を引き寄せています。"
  shiro.address = "北海道松前郡松前町字松城144"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "根城") do |shiro|
  shiro.detail = "根城は岩手県に位置し、戦国時代に築かれた城です。その城壁や堀、建物の一部が現存し、歴史愛好者や観光客にとって魅力的なスポットとなっています。"
  shiro.address = "青森県八戸市根城下町42"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "盛岡城") do |shiro|
  shiro.detail = "盛岡城は岩手県盛岡市に位置し、武家時代の要塞です。城跡は公園として整備されており、城址からの素晴らしい展望と、周辺の自然環境が楽しめます。"
  shiro.address = "岩手県盛岡市菜園1-1-3"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "多賀城") do |shiro|
  shiro.detail = "多賀城は、宮城県に位置し、日本の歴史において重要な役割を果たした古代の城砦です。この城は7世紀に建てられ、日本最古の石垣が残ることで知られています。多賀城跡は歴史愛好者にとって魅力的な場所です。"
  shiro.address = "宮城県多賀城市市川字城前"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "久保田城") do |shiro|
  shiro.detail = "久保田城は秋田県にある城で、戦国時代から江戸時代にかけて重要な拠点でした。城址からは秋田市を一望でき、城内には歴史的な建物や資料館があります。"
  shiro.address = "秋田県秋田市千秋公園1-39"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "二本松城") do |shiro|
  shiro.detail = "二本松城は福島県に位置し、戦国時代から江戸時代にかけて重要な城でした。城跡は公園として整備されており、歴史的な建物と緑豊かな庭園が魅力です。"
  shiro.address = "福島県二本松市郭内3"
  shiro.display_status = true
end

Shiro.find_or_create_by!(name: "会津若松城") do |shiro|
  shiro.detail = "会津若松城は福島県に位置し、会津戦争の舞台として有名です。城内には多くの歴史的な建物や資料館があり、訪れる人々に幕末の歴史を体験させてくれます。"
  shiro.address = "福島県会津若松市追手町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "白河小峰城") do |shiro|
  shiro.detail = "白河小峰城は福島県の白河市に位置し、戦国時代の城として知られています。城跡は公園として整備されており、美しい自然環境と歴史的な建物が共存しています。"
  shiro.address = "福島県白河市追廻46"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "水戸城") do |shiro|
  shiro.detail = "水戸城は茨城県に位置し、特に弘道館（こうどうかん）としても知られています。この城は水戸藩の本拠地であり、弘道館は国学の研究と普及に尽力した水戸黄門こと徳川斉昭の邸宅でもありました。歴史的な建物や美しい庭園が魅力です。"
  shiro.address = "茨城県水戸市三の丸1他"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "足利氏館") do |shiro|
  shiro.detail = "足利氏館は栃木県足利市にある城跡で、鑁阿寺としても知られています。足利将軍家の拠点であり、その歴史的な価値が高いです。現在は趣のある寺として残っており、歴史愛好者にとって訪れる価値があります。"
  shiro.address = "栃木県足利市家富町（鑁阿寺)"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "箕輪城") do |shiro|
  shiro.detail = "箕輪城は長野県に位置し、信濃国の古城跡です。城址からは美しい自然景観を楽しむことができます。歴史的な建物は残っていませんが、城の跡地を訪れることでその歴史を感じることができます。"
  shiro.address = "群馬県高崎市箕郷町西明屋法峯寺前231他"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "金山城") do |shiro|
  shiro.detail = "金山城は岐阜県に位置し、日本三大急坂の一つである金山城公園にあります。城内には歴史的な建造物や資料館があり、城跡からは岐阜市の景色を楽しむことができます。"
  shiro.address = "群馬県太田市金山町40-98"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "鉢形城") do |shiro|
  shiro.detail = "鉢形城は長野県に位置し、戦国時代に築かれた城です。その特徴的な鉢形状の地形と歴史的な価値が注目されています。城跡は訪れる人々に歴史的な旅を提供しています。"
  shiro.address = "埼玉県大里郡寄居町大字鉢形"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "川越城") do |shiro|
  shiro.detail = "川越城は埼玉県川越市に位置し、江戸時代の城郭です。城内には歴史的な建物や資料館があり、江戸時代の雰囲気を楽しむことができます。"
  shiro.address = "埼玉県川越市郭町2他"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "佐倉城") do |shiro|
  shiro.detail = "佐倉城は千葉県に位置し、戦国時代から江戸時代にかけて重要な城でした。城址には歴史的な建物や資料館があり、歴史愛好者に訪れる価値があります。"
  shiro.address = "千葉県佐倉市城内町官有無番地"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "江戸城") do |shiro|
  shiro.detail = "江戸城は東京都心に位置し、江戸時代に将軍の本拠地として栄えました。現在は皇居として使用されており、外郭や堀が残っています。江戸時代の日本の政治史に重要な影響を与えた城です。"
  shiro.address = "東京都千代田区千代田"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "八王子城") do |shiro|
  shiro.detail = "八王子城は東京都八王子市に位置し、戦国時代から江戸時代にかけて存在した城です。城跡は公園として整備されており、歴史と自然が共存しています。"
  shiro.address = "東京都八王子市元八王子町3、西寺方町、下恩方町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "小田原城") do |shiro|
  shiro.detail = "小田原城は神奈川県小田原市に位置し、戦国時代から江戸時代にかけて重要な城でした。城内には歴史的な建造物や資料館があり、城址からの美しい景色が楽しめます。"
  shiro.address = "神奈川県小田原市城内、本町他"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "武田氏館") do |shiro|
  shiro.detail = "武田氏館は山梨県甲府市に位置し、武田信玄の拠点として有名です。現在は武田神社として残り、武田氏の歴史と文化に関連する多くの展示物があります。"
  shiro.address = "山梨県甲府市古府中町2611"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "甲府城") do |shiro|
  shiro.detail = "甲府城は山梨県甲府市にある城で、武田信玄が築いた城として知られています。城跡は公園として整備され、歴史的な建造物や庭園が訪れる人々を魅了します。"
  shiro.address = "山梨県甲府市丸の内1-5-4"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松代城") do |shiro|
  shiro.detail = "松代城は長野県に位置し、戦国時代から江戸時代にかけて重要な城でした。城址には歴史的な建物や資料館があり、訪れる人々に歴史と文化を伝えています。"
  shiro.address = "長野県長野市松代町松代44地"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "上田城") do |shiro|
  shiro.detail = "上田城は長野県上田市にある城で、上杉謙信の拠点として有名です。城内には歴史的な建造物や美しい庭園があり、訪れる人々に戦国時代の雰囲気を楽しむ機会を提供しています"
  shiro.address = "長野県上田市二の丸"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "小諸城") do |shiro|
  shiro.detail = "小諸城は長野県に位置し、小諸藩の拠点でした。城跡は公園として整備されており、歴史的な建物や美しい景観が魅力です。"
  shiro.address = "長野県小諸市丁311（懐古園）"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "高遠城") do |shiro|
  shiro.detail = "高遠城は長野県に位置し、戦国時代から江戸時代にかけて重要な城でした。城址は公園として整備されており、歴史と自然が共存しています。"
  shiro.address = "長野県伊那市高遠町東高遠"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "新発田城") do |shiro|
  shiro.detail = "新発田城は新潟県新発田市に位置し、戦国時代から江戸時代にかけて存在した城です。城内には歴史的な建造物や美しい庭園があります。"
  shiro.address = "新潟県新発田市大手町6-4"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "春日山城") do |shiro|
  shiro.detail = "春日山城は山形県山形市に位置し、戦国時代から江戸時代にかけて存在した城です。城跡は公園として整備され、歴史と自然が調和しています。"
  shiro.address = "新潟県上越市中屋敷字春日山"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "高岡城") do |shiro|
  shiro.detail = "高岡城は富山県高岡市に位置し、江戸時代に築かれた城です。城内には歴史的な建造物や美しい庭園があり、訪れる人々に歴史と文化を楽しむ機会を提供しています。"
  shiro.address = "富山県高岡市古城1-1"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "七尾城") do |shiro|
  shiro.detail = "七尾城は石川県七尾市に位置し、加賀藩の拠点でした。城内には歴史的な建物や資料館があり、加賀藩の歴史を伝えています。"
  shiro.address = "石川県七尾市古府町、古屋敷町、竹町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "金沢城") do |shiro|
  shiro.detail = "金沢城は石川県金沢市に位置し、加賀藩の城郭として有名です。現在は広大な城内庭園や歴史的な建物が残り、訪れる人々に美しい景観と歴史を提供しています。"
  shiro.address = "石川県金沢市丸の内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "丸岡城") do |shiro|
  shiro.detail = "丸岡城は石川県丸岡町に位置し、江戸時代の城として知られています。城址は公園として整備されており、歴史と自然が共存しています。"
  shiro.address = "福井県坂井市丸岡町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "一乗谷城") do |shiro|
  shiro.detail = "一乗谷城は福井県に位置し、戦国時代から江戸時代にかけて重要な城でした。城址には歴史的な建物や資料館があり、訪れる人々に戦国時代の雰囲気を楽しむ機会を提供しています。"
  shiro.address = "福井県福井市城戸ノ内町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岩村城") do |shiro|
  shiro.detail = "岩村城は岐阜県に位置し、戦国時代から江戸時代にかけて存在した城です。城跡は公園として整備され、歴史と自然が調和しています。"
  shiro.address = "岐阜県恵那市岩村町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "山中城") do |shiro|
  shiro.detail = "山中城は岐阜県に位置し、戦国時代から江戸時代にかけて重要な城でした。城址は公園として整備されており、歴史と自然が共存しています。"
  shiro.address = "静岡県三島市山中新田"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "駿府城") do |shiro|
  shiro.detail = "駿府城は静岡県静岡市に位置し、徳川家康の拠点として有名です。城址には歴史的な建造物や資料館があり、訪れる人々に戦国時代から江戸時代へのタイムトリップを提供しています。"
  shiro.address = "静岡県静岡市葵区"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "掛川城") do |shiro|
  shiro.detail = "掛川城は静岡県掛川市に位置し、戦国時代から江戸時代にかけて存在した城です。城跡は公園として整備され、歴史と自然が調和しています。"
  shiro.address = "静岡県掛川市掛川"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "長篠城") do |shiro|
  shiro.detail = "長篠城は愛知県長篠町に位置し、戦国時代の戦いで有名な城跡です。城址は公園として整備され、歴史と自然が調和しています。"
  shiro.address = "愛知県新城市長篠字市場"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "伊賀上野城") do |shiro|
  shiro.detail = "伊賀上野城は三重県伊賀市に位置し、戦国時代から江戸時代にかけて存在した城です。城内には歴史的な建物や資料館があり、伊賀忍者の歴史を伝えています。"
  shiro.address = "三重県伊賀市上野丸之内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松坂城") do |shiro|
  shiro.detail = "松阪城は三重県松阪市に位置し、戦国時代から江戸時代にかけて重要な城でした。城跡は公園として整備され、歴史と自然が共存しています。"
  shiro.address = "三重県松阪市殿町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "小谷城") do |shiro|
  shiro.detail = "小谷城は滋賀県に位置し、近江小谷村の城として知られています。城跡は自然に囲まれ、歴史的な遺産を訪れる人々に提供しています。"
  shiro.address = "滋賀県長浜市湖北町他"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "安土城") do |shiro|
  shiro.detail = "安土城は滋賀県に位置し、豊臣秀吉の城として有名です。城址は公園として整備され、歴史的な建物や庭園が魅力です。"
  shiro.address = "滋賀県近江八幡市安土町下豊浦"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "観音寺城") do |shiro|
  shiro.detail = "観音寺城は滋賀県長浜市に位置し、戦国時代から江戸時代にかけて重要な城でした。城内には歴史的な建物や美しい景観があります。"
  shiro.address = "滋賀県近江八幡市安土町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "二条城") do |shiro|
  shiro.detail = "二条城は京都府京都市に位置し、幕府将軍の居城として知られています。城内には歴史的な建造物や美しい庭園があり、京都の歴史と文化を体験できます。"
  shiro.address = "京都府京都市中京区二条通堀川西入二条城町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "千早城") do |shiro|
  shiro.detail = "千早城は奈良県に位置し、戦国時代から江戸時代にかけて存在した城です。城址は公園として整備され、歴史と自然が共存しています。"
  shiro.address = "大阪府南河内郡千早赤阪村千早"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "竹田城") do |shiro|
  shiro.detail = "竹田城は京都府亀岡市に位置し、戦国時代の城として知られています。城内には歴史的な建物や美しい庭園があります。"
  shiro.address = "兵庫県朝来市和田山町竹田字古城山169"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "篠山城") do |shiro|
  shiro.detail = "篠山城は兵庫県丹波篠山市に位置し、戦国時代から江戸時代にかけて存在した城です。城跡は公園として整備され、歴史と自然が調和しています。"
  shiro.address = "兵庫県篠山市北新町他"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "明石城") do |shiro|
  shiro.detail = "明石城は兵庫県明石市に位置し、戦国時代の城として有名です。城址は公園として整備され、歴史と美しい海岸線が共存しています。"
  shiro.address = "兵庫県明石市明石公園1-27"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "姫路城") do |shiro|
  shiro.detail = "姫路城は兵庫県姫路市に位置し、日本で最も美しい白壁の城とされています。城内には歴史的な建造物や美しい庭園があり、姫路の象徴として親しまれています。"
  shiro.address = "兵庫県姫路市本町68"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "赤穂城") do |shiro|
  shiro.detail = "赤穂城は兵庫県赤穂市に位置し、赤穂浪士ゆかりの城として知られています。城跡は公園として整備され、訪れる人々に忠臣の物語を伝えています。"
  shiro.address = "兵庫県赤穂市加里屋"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "高取城") do |shiro|
  shiro.detail = "高取城は兵庫県たつの市に位置し、戦国時代の城として知られています。城址は公園として整備され、歴史と自然が共存しています。"
  shiro.address = "奈良県高市郡高取町高取、上子島、吉野郡大淀町比曽"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "和歌山城") do |shiro|
  shiro.detail = "和歌山城は和歌山県和歌山市に位置し、戦国時代から江戸時代にかけて存在した城です。城内には歴史的な建物や資料館があり、訪れる人々に歴史と文化を提供しています。"
  shiro.address = "和歌山県和歌山市一番丁"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "鳥取城") do |shiro|
  shiro.detail = "鳥取城は鳥取県鳥取市に位置し、鳥取県の象徴的な城として知られています。城内には歴史的な建造物や美しい庭園があり、訪れる人々に歴史と景観を楽しむ機会を提供しています。"
  shiro.address = "鳥取県鳥取市東町2"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "月山富田城") do |shiro|
  shiro.detail = "月山富田城は島根県に位置し、戦国時代から江戸時代にかけて存在した城です。城址は公園として整備され、歴史と自然が共存しています。"
  shiro.address = "島根県安来市広瀬町富田"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "津和野城") do |shiro|
  shiro.detail = "津和野城は島根県津和野町に位置し、江戸時代の城として知られています。城内には歴史的な建物や資料館があり、訪れる人々に時代背景を伝えています。"
  shiro.address = "島根県鹿足郡津和野町後田"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "津山城") do |shiro|
  shiro.detail = "津山城は岡山県津山市に位置し、岡山県内で有名な城の一つです。城内には歴史的な建物や美しい庭園があり、訪れる人々に歴史と景観を提供しています。"
  shiro.address = "岡山県津山市山下"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "備中松山城") do |shiro|
  shiro.detail = "備中松山城は岡山県に位置し、戦国時代から江戸時代にかけて存在した城です。城址は公園として整備され、歴史と自然が調和しています。"
  shiro.address = "岡山県高梁市内山下1"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "鬼ノ城") do |shiro|
  shiro.detail = "鬼ノ城は岡山県に位置し、独特の地形と城郭が特徴です。城跡は歴史愛好者にとって魅力的なスポットとなっています。"
  shiro.address = "岡山県総社市奥坂鬼城山"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "吉田郡山城") do |shiro|
  shiro.detail = "郡山城は福岡県に位置し、戦国時代から江戸時代にかけて重要な城でした。城内には歴史的な建物や資料館があり、訪れる人々に時代背景を伝えています。"
  shiro.address = "広島県安芸高田市吉田町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岩国城") do |shiro|
  shiro.detail = "岩国城は山口県岩国市に位置し、瀬戸内海に面した城です。城内には歴史的な建物や美しい海岸線があり、訪れる人々に歴史と自然を提供しています。"
  shiro.address = "山口県岩国市横山"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "萩城") do |shiro|
  shiro.detail = "萩城は山口県萩市に位置し、長州藩の拠点として有名です。城内には歴史的な建物や庭園があり、訪れる人々に長州藩の歴史を伝えています。"
  shiro.address = "山口県萩市堀内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "徳島城") do |shiro|
  shiro.detail = "徳島城は徳島県徳島市に位置し、四国地方で有名な城の一つです。城内には歴史的な建造物や資料館があり、訪れる人々に歴史と文化を提供しています。"
  shiro.address = "徳島県徳島市徳島町城内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "高松城") do |shiro|
  shiro.detail = "高松城は香川県高松市に位置し、讃岐うどんの本場で知られています。城内には歴史的な建物や美しい庭園があり、讃岐の歴史と食文化を楽しむことができます。"
  shiro.address = "香川県高松市玉藻町2-1"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "丸亀城") do |shiro|
  shiro.detail = "丸亀城は香川県丸亀市に位置し、讃岐うどんの名産地である丸亀市の象徴的な城です。城内には歴史的な建造物や美しい庭園があり、訪れる人々に歴史と地域の特産品を提供しています。"
  shiro.address = "香川県丸亀市一番丁"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "今治城") do |shiro|
  shiro.detail = "今治城は愛媛県今治市に位置し、瀬戸内海に面した城です。城内には歴史的な建物や美しい海岸線があり、訪れる人々に歴史と自然を楽しむ機会を提供しています。"
  shiro.address = "愛媛県今治市通町3-1-3"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "湯築城") do |shiro|
  shiro.detail = "湯築城は愛媛県松山市に位置し、城郭の美しさと歴史的な価値が注目されています。城内には歴史的な建物や美しい庭園があり、訪れる人々に歴史と景観を提供しています。"
  shiro.address = "愛媛県松山市道後町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "松山城") do |shiro|
  shiro.detail = "松山城は愛媛県松山市に位置し、四国地方で最も有名な城の一つです。城内には歴史的な建物や美しい庭園があり、訪れる人々に歴史と景観を提供しています。"
  shiro.address = "愛媛県松山市丸の内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大洲城") do |shiro|
  shiro.detail = "大洲城は愛媛県大洲市に位置し、戦国時代から江戸時代にかけて存在した城です。城跡は公園として整備され、歴史と自然が共存しています。"
  shiro.address = "愛媛県大洲市大洲903"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "宇和島城") do |shiro|
  shiro.detail = "宇和島城は愛媛県宇和島市に位置し、海に面した城です。城内には歴史的な建物や美しい海岸線があり、訪れる人々に歴史と自然を楽しむ機会を提供しています。"
  shiro.address = "愛媛県宇和島市丸之内1"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "福岡城") do |shiro|
  shiro.detail = "福岡城は福岡市にある歴史的な城で、戦国時代に築かれました。城内には美しい庭園と歴史的な建物があり、観光名所として知られています。"
  shiro.address = "福岡県福岡市中央区城内"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大野城") do |shiro|
  shiro.detail = "大野城は岡山県にある城で、戦国時代の歴史的な遺産です。城跡は美しい自然に囲まれており、歴史愛好家にとって魅力的な場所です。"
  shiro.address = "福岡県大野城市／太宰府市／糟屋郡宇美町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "名護屋城") do |shiro|
  shiro.detail = "名護屋城は長崎県にある城で、平戸の戦いで有名です。城跡には展示館があり、戦国時代の歴史を学ぶことができます。"
  shiro.address = "佐賀県唐津市鎮西町名護屋3673"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "吉野ヶ里遺跡") do |shiro|
  shiro.detail = "吉野ヶ里歴史公園は佐賀県に位置し、古代の古墳や遺跡が点在する歴史的な場所です。この公園は日本の古代史に関心のある人におすすめです。"
  shiro.address = "佐賀県神埼郡吉野ヶ里町田手／神埼市"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "佐賀城") do |shiro|
  shiro.detail = "佐賀城は佐賀市にある城で、江戸時代の建造物が保存されています。城内には博物館があり、佐賀の歴史や文化を紹介しています。"
  shiro.address = "佐賀県佐賀市城内2-14"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "平戸城") do |shiro|
  shiro.detail = "平戸城は長崎県平戸市にある城で、平戸の戦いの舞台として知られています。美しい海に囲まれた城跡からは素晴らしい景色が楽しめます。"
  shiro.address = "長崎県平戸市岩ノ上町1473"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "島原城") do |shiro|
  shiro.detail = "島原城は長崎県島原市にある城で、島原の乱の舞台として有名です。城内には歴史的な建造物や美しい庭園があります。"
  shiro.address = "長崎県島原市城内1"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "熊本城") do |shiro|
  shiro.detail = "熊本城は熊本市にある代表的な城で、石垣の美しさで知られています。熊本城は戦国時代の歴史的な要塞であり、訪れる価値があります。"
  shiro.address = "熊本県熊本市中央区本丸、二の丸"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "人吉城") do |shiro|
  shiro.detail = "人吉城は熊本県人吉市にある城で、戦国時代の歴史を感じることができる場所です。城内には資料館があり、歴史愛好家に向けられています。"
  shiro.address = "熊本県人吉市麓町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "大分府内城") do |shiro|
  shiro.detail = "大分府内城は大分市にある城で、大分の歴史的な中心地として栄えました。城跡には歴史的な建造物や公園があります。"
  shiro.address = "大分県大分市荷揚町4-36"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "岡城") do |shiro|
  shiro.detail = "岡城は福岡県岡山市にある城で、美しい城郭跡と庭園があります。城内では歴史に触れることができます。"
  shiro.address = "大分県竹田市大字竹田"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "飫肥城") do |shiro|
  shiro.detail = "飫肥城は鹿児島県飫肥村にある城で、美しい海岸線に立地しています。城跡からの景色は絶景で、歴史と自然を楽しむことができます。"
  shiro.address = "宮崎県日南市飫肥10-1"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "鹿児島城") do |shiro|
  shiro.detail = "鹿児島城は鹿児島市にある城で、桜島と組み合わせて美しい風景を提供しています。城内には歴史博物館があります。"
  shiro.address = "鹿児島県鹿児島市城山町"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "今帰仁城") do |shiro|
  shiro.detail = "今帰仁城は沖縄県にある城で、琉球王国時代の歴史的な遺産です。城跡は琉球文化の魅力を伝えています。"
  shiro.address = "沖縄県国頭郡今帰仁村"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "中城城") do |shiro|
  shiro.detail = "中城城は沖縄県中頭村にある城で、琉球王国時代の城跡として訪れられます。歴史的な建造物や展示物があります。"
  shiro.address = "沖縄県中頭郡中城村泊／北中城村"
  shiro.display_status = true
end
Shiro.find_or_create_by!(name: "首里城") do |shiro|
  shiro.detail = "首里城は沖縄本島に位置し、琉球王国の首都であった場所に建つ城です。琉球文化の象徴として重要な存在です。城内には美しい庭園と歴史博物館があります。"
  shiro.address = "沖縄県那覇市首里"
  shiro.display_status = true
end

puts "shiroデータの読み込み完了"
puts "管理者データの読み込み開始"

Admin.find_or_create_by!(email: "sample@admin.com") do |admin|
  admin.password = ENV['ADMIN_PASSWORD']
end

puts "管理者データの読み込み完了"
puts "会員データの読み込み開始"

Member.find_or_create_by!(nick_name: "わたる1") do |member|
  member.email = 'wataru1@sample.com'
  member.password = ENV['MEMBER1_PASSWORD']
end

Member.find_or_create_by!(nick_name: "わたる2") do |member|
  member.email = 'wataru2@sample.com'
  member.password = ENV['MEMBER2_PASSWORD']
end


puts "会員データの読み込み完了"
puts "会員投稿データの読み込み開始"
Post.find_or_create_by!(id: 1) do |post|
  post.id = 1,
  post.member_id = 1,
  post.post_text = "ShiroMapデプロイ開始！"
end
Post.find_or_create_by!(id: 2) do |post|
  post.id = 2,
  post.member_id = 1,
  post.post_text = "ユーザー1テスト用投稿1"
end
Post.find_or_create_by!(id: 3) do |post|
  post.id = 3,
  post.member_id = 1,
  post.post_text = "ユーザー1テスト用投稿2"
end
Post.find_or_create_by!(id: 4) do |post|
  post.id = 4,
  post.member_id = 1,
  post.post_text = "ユーザー1下書きテスト1",
  post.draft_status = false
end
Post.find_or_create_by!(id: 5) do |post|
  post.id = 5,
  post.member_id = 1,
  post.post_text = "ユーザー1下書きテスト2",
  post.draft_status = false
end
Post.find_or_create_by!(id: 6) do |post|
  post.id = 6,
  post.member_id = 2,
  post.post_text = "ユーザー2テスト用投稿1"
end
Post.find_or_create_by!(id: 7) do |post|
  post.id = 7,
  post.member_id = 2,
  post.post_text = "ユーザー2テスト用投稿2"
end
Post.find_or_create_by!(id: 8) do |post|
  post.id = 8,
  post.member_id = 2,
  post.post_text = "ユーザー2下書きテスト1",
  post.draft_status = false
end
Post.find_or_create_by!(id: 9) do |post|
  post.id = 9,
  post.member_id = 2,
  post.post_text = "ユーザー2下書きテスト2",
  post.draft_status = false
end
Post.find_or_create_by!(id: 10) do |post|
  post.id = 10,
  post.member_id = 1,
  post.post_text = "ユーザー1テスト用投稿3"
end
Post.find_or_create_by!(id: 11) do |post|
  post.id = 11,
  post.member_id = 2,
  post.post_text = "ユーザー2テスト用投稿3"
end
Post.find_or_create_by!(id: 12) do |post|
  post.id = 12,
  post.member_id = 1,
  post.post_text = "ユーザー1下書きテスト3",
  post.draft_status = false
end
Post.find_or_create_by!(id: 13) do |post|
  post.id = 13,
  post.member_id = 2,
  post.post_text = "ユーザー2下書きテスト3",
  post.draft_status = false
end

puts "会員投稿データの読み込み完了"

puts "seedの実行が完了しました"