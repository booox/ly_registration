# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add a User for admin
# RUN: rake db:seed
# u = User.new
# u.email = "1@1.com"
# u.password = "abcabc"
#
# u.password_confirmation = "abcabc"
#
# u.is_admin = true
# u.save


User.create!([email: "1@1.com", password:"abcabc", password_confirmation: "abcabc", is_admin:"true"])
#
puts "Admin account created."
#
User.create!([email: "2@2.cn", password:"abcabc", password_confirmation: "abcabc", is_admin:"false"])
#
puts "User account created."


## Add Batches

puts "Create Batches..."
Batch.create!([
  {
    title: "第一批",
    start_date: DateTime.strptime("07/24/2017 06:00", "%m/%d/%Y %H:%M"),
    return_date: DateTime.strptime("07/28/2017 20:00", "%m/%d/%Y %H:%M")
  },
  {
    title: "第二批",
    start_date: DateTime.strptime("08/07/2017 06:00", "%m/%d/%Y %H:%M"),
    return_date: DateTime.strptime("11/07/2017 20:00", "%m/%d/%Y %H:%M")
  }])
# Batch.create!([title: "第二批", start_date: 2017-7-24, return_date: 2017-7-28])

puts "Batches created..."

## Add Lines

desp01 = """
（一）建德一地疗休养五日游

D1：客源地出发，下午游览新叶古村或康庆农庄，晚上体验新安江夜游。（宿建德）

D2： 上午游览大慈岩，下午乘龙舟漂游，晚上体验新安江玉温泉。（宿建德）

D3： 上午游览七里扬帆、葫芦峡漂流，下午游览三江两岸绿道或玉泉寺景区或三都渔村。 （宿建德）

D4： 上午浏览灵栖洞，下午游览江南大冰洞或果蔬园采摘 （宿建德）

D5： 上午参观新安江水电站、好运岛或情人谷或果蔬园采摘，下午结束送团。
"""

desp02 = """
（二）千岛湖四日游

D1：早上7:30学校集合出发地至千岛湖（车程约3个半小时），下午游览览【千岛湖森林氧吧】  (宿千岛湖)

D2： 上午乘船游览被誉为“天下第一秀水”“千岛碧水画中游”的【千岛湖景区】（中心湖区：游览梅峰岛、龙山岛、渔乐岛），下午至千岛湖（农夫山泉生产基地），切身体验 农夫山泉的生产过程，无限畅饮农夫山泉各种饮料。 （宿千岛湖）

D3：上午游览“最震撼心灵的千岛湖鱼文化之旅”【千岛湖钓鱼岛•巨网捕鱼】   下午感受垂钓乐趣〖休闲垂钓〗 （宿千岛湖）

D4：早上前往千岛湖骑行驿站，进行千岛【湖环湖骑行】，全程7.3公里，沿途都是滨湖独立景观绿道，欣赏千岛湖美丽的湖景，呼吸清新的空气，锻炼身体及心肺功能。中餐后返回温馨的家
"""

desp03 = """
（三） 湖州荻港渔庄五日疗休养日程

D1：8:30 出发到湖州荻港渔庄，欢迎仪式：渔家乐表演；办理入住。

荻港渔庄用中餐（渔庄用的每一餐都安排陈家特色菜：省级非物质文化遗产）

下午 荻港渔庄鱼文化水乡一条街体验，后用晚餐（安排室外篝火鱼汤饭）

D2：游玩国家4A景区--荻港古村，下午荻港渔庄禅茶馆品茶精心，体验紫砂陶艺，制作一个专属的紫砂杯。

D3：前往游览飞英塔、衣裳街步行街，蹬仁皇山，中午湖州潘家廊徐缘府用餐后，到南太湖旅游风景区，晚餐南太湖渔人码头望湖楼用餐，感受南太湖绚丽的夜景后返回荻港渔庄。

D4：坐车前往安吉竹博园、藏龙百瀑，安吉农家菜馆用中餐，返回荻港渔庄，下午带个鱼竿钓鱼去，钓起的鱼可为晚餐加菜晚餐后观看水上灯光舞台戏曲表演、露天舞场互动、欢唱露天KTV

D5：早晨睡到自然醒，餐后自由活动，用中餐后返回。
"""

desp04 = """
（四）象山疗休养四日游

D1：早上指定地点出发，中餐后车赴影视城游中国十大影视拍摄基地—象山影视城   （宿石浦或县城）

D2：游艇出海一日。早上睡到自然醒，中餐后石浦码头上船：可自由选择品茶、赏海景，还可举行扑克、棋牌比赛；观赏捕鱼表演，参与拉网拣鱼（游程约2.5-3h），感受渔民捕鱼的艰辛和丰收的喜悦，捕上来的海鲜全部打包带走。  （宿石浦或县城）

D3：早餐后豪华游轮前往“东方情侣岛·梦幻檀头山”沿途领略美好的东海渔港风光，尽情享受茫茫的海滩、蓝蓝的海水、旖旎的岛风光 。 （宿石浦或县城）

D4：早餐后车子途经中国六大中心渔港—石浦渔港，游全国唯一的以渔港与古城相结合的中国历史文化名镇－石浦渔港古城，中餐后适时送团，结束愉快的行程返回温馨的家园。
"""


puts "Create Lines..."
Line.create!([title: "建德", days: 5, transportations: ["bus"], description: desp01])
Line.create!([title: "千岛湖", days: 4, transportations: ["bus"], description: desp02])
Line.create!([title: "湖州", days: 5, transportations: ["bus"], description: desp03])
Line.create!([title: "象山", days: 4, transportations: ["bus"], description: desp04])

puts "Lines created..."
