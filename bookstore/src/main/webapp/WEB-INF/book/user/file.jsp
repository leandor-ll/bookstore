<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>省市联动</title>
		<script src="${pageContext.request.contextPath}/js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript">
			$(function() {
				var pro = new Array(" 北京市"," 天津市"," 河北省"," 山西省"," 内蒙古自治区"," 辽宁省"," 吉林省"," 黑龙江省"," 江苏省"," 浙江省"," 安徽省"," 福建省"," 江西省"," 山东省"," 河南省"," 湖北省"," 湖南省"," 广东省"," 广西壮族自治区"," 海南省"," 四川省"," 贵州省"," 云南省"," 西藏自治区"," 陕西省"," 甘肃省"," 青海省"," 宁夏回族自治区","新疆维吾尔自治区"," 上海市"," 重庆市"," 台湾省","香港特别行政区","澳门特别行政区");
				var city0 = new Array(" 东城区"," 西城区"," 崇文区"," 宣武区"," 朝阳区"," 丰台区"," 石景山区"," 海淀区"," 门头沟区"," 房山区"," 通州区"," 顺义区"," 昌平区"," 大兴区"," 怀柔区"," 平谷区");
				var city1 = new Array(" 和平区"," 河东区"," 河西区"," 南开区"," 河北区"," 红桥区"," 塘沽区"," 汉沽区"," 大港区"," 东丽区"," 西青区"," 津南区"," 北辰区"," 武清区"," 宝坻区");
				var city2 = new Array(" 石家庄市"," 唐山市"," 秦皇岛市"," 邯郸市"," 邢台市"," 保定市"," 张家口市"," 承德市"," 沧州市"," 廊坊市"," 衡水市");
				var city3 = new Array(" 太原市"," 大同市"," 阳泉市"," 长治市"," 晋城市"," 朔州市"," 晋中市"," 运城市"," 忻州市"," 临汾市"," 吕梁市");
				var city4 = new Array(" 呼和浩特市"," 包头市"," 乌海市"," 赤峰市"," 通辽市"," 鄂尔多斯市"," 呼伦贝尔市"," 巴彦淖尔市"," 乌兰察布市"," 兴安盟"," 锡林郭勒盟"," 阿拉善盟");
				var city5 = new Array(" 沈阳市"," 大连市"," 鞍山市"," 抚顺市"," 本溪市"," 丹东市"," 锦州市"," 营口市"," 阜新市"," 辽阳市"," 盘锦市"," 铁岭市"," 朝阳市"," 葫芦岛市");
				var city6 = new Array(" 长春市"," 吉林市"," 四平市"," 辽源市"," 通化市"," 白山市"," 松原市"," 白城市"," 延边朝鲜族自治州");
				var city7 = new Array(" 哈尔滨市"," 齐齐哈尔市"," 鸡西市"," 鹤岗市"," 双鸭山市"," 大庆市"," 伊春市"," 佳木斯市"," 七台河市"," 牡丹江市"," 黑河市"," 绥化市"," 大兴安岭地区");
				var city8 = new Array(" 南京市"," 无锡市"," 徐州市"," 常州市"," 苏州市"," 南通市"," 连云港市"," 淮安市"," 盐城市"," 扬州市"," 镇江市"," 泰州市"," 宿迁市");
				var city9 = new Array(" 杭州市"," 宁波市"," 温州市"," 嘉兴市"," 湖州市"," 绍兴市"," 金华市"," 衢州市"," 舟山市"," 台州市"," 丽水市");
				var city10 = new Array(" 合肥市"," 芜湖市"," 蚌埠市"," 淮南市"," 马鞍山市"," 淮北市"," 铜陵市"," 安庆市"," 黄山市"," 滁州市"," 阜阳市"," 宿州市"," 巢湖市"," 六安市"," 亳州市"," 池州市"," 宣城市");
				var city11 = new Array(" 福州市"," 厦门市"," 莆田市"," 三明市"," 泉州市"," 漳州市"," 南平市"," 龙岩市"," 宁德市");
				var city12 = new Array(" 南昌市"," 景德镇市"," 萍乡市"," 九江市"," 新余市"," 鹰潭市"," 赣州市"," 吉安市"," 宜春市"," 抚州市"," 上饶市");
				var city13 = new Array(" 济南市"," 青岛市"," 淄博市"," 枣庄市"," 东营市"," 烟台市"," 潍坊市"," 济宁市"," 泰安市"," 威海市"," 日照市"," 莱芜市"," 临沂市"," 德州市"," 聊城市"," 滨州市"," 菏泽市");
				var city14 = new Array(" 郑州市"," 开封市"," 洛阳市"," 平顶山市"," 安阳市"," 鹤壁市"," 新乡市"," 焦作市"," 濮阳市"," 许昌市"," 漯河市"," 三门峡市"," 南阳市"," 商丘市"," 信阳市"," 周口市"," 驻马店市");
				var city15 = new Array(" 武汉市"," 黄石市"," 十堰市"," 宜昌市"," 襄樊市"," 鄂州市"," 荆门市"," 孝感市"," 荆州市"," 黄冈市"," 咸宁市"," 随州市"," 恩施土家族苗族自治州");
				var city16 = new Array(" 长沙市"," 株洲市"," 湘潭市"," 衡阳市"," 邵阳市"," 岳阳市"," 常德市"," 张家界市"," 益阳市"," 郴州市"," 永州市"," 怀化市"," 娄底市"," 湘西土家族苗族自治州");
				var city17 = new Array(" 广州市"," 韶关市"," 深圳市"," 珠海市"," 汕头市"," 佛山市"," 江门市"," 湛江市"," 茂名市"," 肇庆市"," 惠州市"," 梅州市"," 汕尾市"," 河源市"," 阳江市"," 清远市"," 东莞市"," 中山市"," 潮州市"," 揭阳市"," 云浮市");
				var city18 = new Array(" 南宁市"," 柳州市"," 桂林市"," 梧州市"," 北海市"," 防城港市"," 钦州市"," 贵港市"," 玉林市"," 百色市"," 贺州市"," 河池市"," 来宾市"," 崇左市");
				var city19 = new Array(" 海口市"," 三亚市");
				var city20 = new Array(" 成都市"," 自贡市"," 攀枝花市"," 泸州市"," 德阳市"," 绵阳市"," 广元市"," 遂宁市"," 内江市"," 乐山市"," 南充市"," 眉山市"," 宜宾市"," 广安市"," 达州市"," 雅安市"," 巴中市"," 资阳市"," 阿坝藏族羌族自治州"," 甘孜藏族自治州"," 凉山彝族自治州");
				var city21 = new Array(" 贵阳市"," 六盘水市"," 遵义市"," 安顺市"," 铜仁地区"," 黔西南布依族苗族自治州"," 毕节地区"," 黔东南苗族侗族自治州"," 黔南布依族苗族自治州");
				var city22 = new Array(" 昆明市"," 曲靖市"," 玉溪市"," 保山市"," 昭通市"," 丽江市"," 普洱市(*)"," 临沧市"," 楚雄彝族自治州"," 红河哈尼族彝族自治州"," 文山壮族苗族自治州"," 西双版纳傣族自治州"," 大理白族自治州"," 德宏傣族景颇族自治州"," 怒江傈僳族自治州"," 迪庆藏族自治州");
				var city23 = new Array(" 拉萨市"," 昌都地区"," 山南地区"," 日喀则地区"," 那曲地区"," 阿里地区"," 林芝地区");
				var city24 = new Array(" 西安市"," 铜川市"," 宝鸡市"," 咸阳市"," 渭南市"," 延安市"," 汉中市"," 榆林市"," 安康市"," 商洛市");
				var city25 = new Array(" 兰州市"," 嘉峪关市"," 金昌市"," 白银市"," 天水市"," 武威市"," 张掖市"," 平凉市"," 酒泉市"," 庆阳市"," 定西市"," 陇南市"," 临夏回族自治州"," 甘南藏族自治州");
				var city26 = new Array(" 西宁市"," 海东地区"," 海北藏族自治州"," 黄南藏族自治州"," 海南藏族自治州"," 果洛藏族自治州"," 玉树藏族自治州"," 海西蒙古族藏族自治州");
				var city27 = new Array(" 银川市"," 石嘴山市"," 吴忠市"," 固原市"," 中卫市");
				var city28 = new Array(" 乌鲁木齐市"," 克拉玛依市"," 吐鲁番地区"," 哈密地区"," 昌吉回族自治州"," 博尔塔拉蒙古自治州"," 巴音郭楞蒙古自治州"," 阿克苏地区"," 克孜勒苏柯尔克孜自治州"," 喀什地区"," 和田地区"," 伊犁哈萨克自治州"," 塔城地区"," 阿勒泰地区");
				var city29 = new Array(" 黄浦区","卢湾区","徐汇区","长宁区","静安区","普陀区","闸北区","虹口区","杨浦区","闵行区","宝山区","嘉定区"," 浦东新区","松江区","金山区","青浦区","南汇区","奉贤区","崇明县");
				var city30 = new Array(" 万州区","涪陵区","渝中区","大渡口区","江北区","沙坪坝区","九龙坡区","南岸区","北碚区","万盛区","双桥区","渝北区","巴南区","黔江区","长寿区","江津区","合川区","永川区","南川区");
				var city31 = new Array(" 桃园"," 南投县"," 嘉义"," 彰化县"," 新竹县"," 澎湖县"," 台东县"," 宜兰县"," 新北");
				var city32 = new Array(" 香港岛"," 中西区"," 湾仔区"," 东区"," 南区"," 澎湖县"," 九龙半岛"," 深水埗区"," 九龙城区","黄大仙区");
				var city33 = new Array(" 青州"," 台山"," 黑沙环"," 筷子基"," 水塘");		
				var city = new Array(city0, city1,city2,city3,city4,city5, city6,city7,city8,city9,city10, city11,city12,city13,city14,city15,city16,city17,city18,city19,city20,city21,city22,city23,city24,city25, city26,city27,city28,city29,city30,city31,city32,city33);
				
				var county0 = new Array("长安区"," 桥东区"," 桥西区"," 新华区"," 井陉矿区"," 裕华区"," 井陉县"," 正定县"," 栾城县"," 行唐县"," 灵寿县"," 高邑县"," 深泽县"," 赞皇县"," 无极县"," 平山县"," 元氏县"," 赵县"," 辛集市"," 藁城市"," 晋州市"," 新乐市"," 鹿泉市");
				var county1 = new Array("路南区"," 路北区"," 古冶区"," 开平区"," 丰南区"," 丰润区"," 滦县"," 滦南县"," 乐亭县"," 迁西县"," 玉田县"," 唐海县"," 遵化市"," 迁安市");
				var county2 = new Array("海港区"," 山海关区"," 北戴河区"," 青龙满族自治县"," 昌黎县"," 抚宁县"," 卢龙县");
				var county3 = new Array(" 邯山区"," 丛台区"," 复兴区"," 峰峰矿区"," 邯郸县"," 临漳县"," 成安县"," 大名县"," 涉县"," 磁县"," 肥乡县"," 永年县"," 邱县"," 鸡泽县"," 广平县"," 馆陶县"," 魏县"," 曲周县"," 武安市");
				var county4 = new Array(" 桥东区"," 桥西区"," 邢台县"," 临城县"," 内丘县"," 柏乡县"," 隆尧县"," 任县"," 南和县"," 宁晋县"," 巨鹿县"," 新河县"," 广宗县"," 平乡县"," 威县"," 清河县"," 临西县"," 南宫市"," 沙河市");
				var county5 = new Array(" 新市区"," 北市区"," 满城县"," 清苑县"," 涞水县"," 阜平县"," 徐水县"," 定兴县"," 唐县"," 高阳县"," 容城县"," 涞源县"," 望都县"," 安新县"," 易县"," 曲阳县"," 蠡县"," 顺平县"," 博野县"," 雄县"," 涿州市"," 定州市"," 安国市"," 高碑店市");
				var county6 = new Array(" 桥东区"," 桥西区"," 宣化区"," 下花园区"," 宣化县"," 张北县"," 康保县"," 沽源县"," 尚义县"," 蔚县"," 阳原县"," 怀安县"," 万全县"," 怀来县"," 涿鹿县"," 赤城县"," 崇礼县");
				var county7 = new Array(" 双桥区"," 双滦区"," 鹰手营子矿区"," 承德县"," 兴隆县"," 平泉县"," 滦平县"," 隆化县"," 丰宁满族自治县"," 宽城满族自治县"," 围场满族蒙古族自治县");
				var county8 = new Array(" 新华区"," 运河区"," 沧县"," 青县"," 东光县"," 海兴县"," 盐山县"," 肃宁县"," 南皮县"," 吴桥县"," 献县"," 孟村回族自治县"," 泊头市"," 任丘市"," 黄骅市"," 河间市");
				var county9 = new Array(" 安次区"," 广阳区"," 固安县"," 永清县"," 香河县"," 大城县"," 文安县"," 大厂回族自治县"," 霸州市"," 三河市");
				var county10 = new Array( "桃城区"," 枣强县"," 武邑县"," 武强县"," 饶阳县"," 安平县"," 故城县"," 景县"," 阜城县"," 冀州市"," 深州市");				
				var countyHeBie = new Array(county0,county1,county2,county3,county4,county5,county6,county7,county8,county9,county10);
				
				var county11 = new Array(" 小店区"," 迎泽区"," 杏花岭区"," 尖草坪区"," 万柏林区"," 晋源区"," 清徐县"," 阳曲县"," 娄烦县"," 古交市");
				var county12 = new Array(" 城区"," 矿区"," 南郊区"," 新荣区"," 阳高县"," 天镇县"," 广灵县"," 灵丘县"," 浑源县"," 左云县"," 大同县");
				var county13 = new Array(" 城区"," 矿区"," 郊区"," 平定县"," 盂县");
				var county14 = new Array(" 城区"," 郊区"," 长治县"," 襄垣县"," 屯留县"," 平顺县"," 黎城县"," 壶关县"," 长子县"," 武乡县"," 沁县"," 沁源县"," 潞城市");
				var county15 = new Array(" 城区"," 沁水县"," 阳城县"," 陵川县"," 泽州县"," 高平市");
				var county16 = new Array(" 朔城区"," 平鲁区"," 山阴县"," 应县"," 右玉县"," 怀仁县");
				var county17 = new Array(" 榆次区"," 榆社县"," 左权县"," 和顺县"," 昔阳县"," 寿阳县"," 太谷县"," 祁县"," 平遥县"," 灵石县"," 介休市");
				var county18 = new Array(" 盐湖区"," 临猗县"," 万荣县"," 闻喜县"," 稷山县"," 新绛县"," 绛县"," 垣曲县"," 夏县"," 平陆县"," 芮城县"," 永济市"," 河津市");
				var county19 = new Array(" 忻府区"," 定襄县"," 五台县"," 代县"," 繁峙县"," 宁武县"," 静乐县"," 神池县"," 五寨县"," 岢岚县"," 河曲县"," 保德县"," 偏关县"," 原平市");
				var county20 = new Array(" 尧都区"," 曲沃县"," 翼城县"," 襄汾县"," 洪洞县"," 古县"," 安泽县"," 浮山县"," 吉县"," 乡宁县"," 大宁县"," 隰县"," 永和县"," 蒲县"," 汾西县"," 侯马市"," 霍州市");
				var county21 = new Array(" 离石区"," 文水县"," 交城县"," 兴县"," 临县"," 柳林县"," 石楼县"," 岚县"," 方山县"," 中阳县"," 交口县"," 孝义市"," 汾阳市");
				var countyShanXi = new Array(county11,county12,county13,county14,county15,county16,county17,county18,county19,county20,county21);
				
				var county22 = new Array(" 新城区"," 回民区"," 玉泉区"," 赛罕区"," 土默特左旗"," 托克托县"," 和林格尔县"," 清水河县"," 武川县");
				var county23 = new Array(" 东河区"," 昆都仑区"," 青山区"," 石拐区"," 白云矿区"," 九原区"," 土默特右旗"," 固阳县"," 达尔罕茂明安联合旗");
				var county24 = new Array(" 海勃湾区"," 海南区"," 乌达区"," 市辖区"," 红山区"," 元宝山区"," 松山区"," 阿鲁科尔沁旗"," 巴林左旗"," 巴林右旗"," 林西县"," 克什克腾旗"," 翁牛特旗"," 喀喇沁旗"," 宁城县"," 敖汉旗");
				var county25 = new Array(" 科尔沁区"," 科尔沁左翼中旗"," 科尔沁左翼后旗"," 开鲁县"," 库伦旗"," 奈曼旗"," 扎鲁特旗"," 霍林郭勒市");
				var county26 = new Array(" 东胜区"," 达拉特旗"," 准格尔旗"," 鄂托克前旗"," 鄂托克旗"," 杭锦旗"," 乌审旗"," 伊金霍洛旗");
				var county27 = new Array(" 海拉尔区"," 阿荣旗"," 莫力达瓦达斡尔族自治旗"," 鄂伦春自治旗"," 鄂温克族自治旗"," 陈巴尔虎旗"," 新巴尔虎左旗"," 新巴尔虎右旗"," 满洲里市"," 牙克石市"," 扎兰屯市"," 额尔古纳市"," 根河市");
				var county28 = new Array(" 临河区"," 五原县"," 磴口县"," 乌拉特前旗"," 乌拉特中旗"," 乌拉特后旗"," 杭锦后旗");
				var county29 = new Array(" 集宁区"," 卓资县"," 化德县"," 商都县"," 兴和县"," 凉城县"," 察哈尔右翼前旗"," 察哈尔右翼中旗"," 察哈尔右翼后旗"," 四子王旗"," 丰镇市");
				var county30 = new Array(" 汾西县"," 侯霍州市");
				var county31 = new Array(" 乌兰浩特市"," 阿尔山市"," 科尔沁右翼前旗"," 科尔沁右翼中旗"," 扎赉特旗"," 突泉县");
				var county32 = new Array(" 二连浩特市"," 锡林浩特市"," 阿巴嘎旗"," 苏尼特左旗"," 苏尼特右旗"," 东乌珠穆沁旗"," 西乌珠穆沁旗"," 太仆寺旗"," 镶黄旗"," 正镶白旗"," 正蓝旗"," 多伦县");
				var county33 = new Array(" 阿拉善左旗"," 阿拉善右旗"," 额济纳旗");
				var countyNeiMengGu = new Array(county22,county23,county24,county25,county26,county27,county28,county29,county30,county31,county32,county33);
				
				var county34 = new Array(" 和平区"," 沈河区"," 大东区"," 皇姑区"," 铁西区"," 苏家屯区"," 东陵区"," 沈北新区"," 于洪区"," 辽中县"," 康平县"," 法库县"," 新民市");
				var county35 = new Array(" 中山区"," 西岗区"," 沙河口区"," 甘井子区"," 旅顺口区"," 金州区"," 长海县"," 瓦房店市"," 普兰店市"," 庄河市");
				var county36 = new Array(" 铁东区"," 铁西区"," 立山区"," 千山区"," 台安县"," 岫岩满族自治县"," 海城市");
				var county37 = new Array(" 新抚区"," 东洲区"," 望花区"," 顺城区"," 抚顺县"," 新宾满族自治县"," 清原满族自治县");
				var county38 = new Array(" 平山区"," 溪湖区"," 明山区"," 南芬区"," 本溪满族自治县"," 桓仁满族自治县");
				var county39 = new Array(" 元宝区"," 振兴区"," 振安区"," 宽甸满族自治县"," 东港市"," 凤城市");
				var county40 = new Array(" 古塔区"," 凌河区"," 太和区"," 黑山县"," 义县"," 凌海市"," 北镇市");
				var county41 = new Array(" 站前区"," 西市区"," 鲅鱼圈区"," 老边区"," 盖州市"," 大石桥市");
				var county42 = new Array(" 海州区"," 新邱区"," 太平区"," 清河门区"," 细河区"," 阜新蒙古族自治县"," 彰武县");
				var county43 = new Array(" 白塔区"," 文圣区"," 宏伟区"," 弓长岭区"," 太子河区"," 辽阳县"," 灯塔市");
				var county44 = new Array(" 双台子区"," 兴隆台区"," 大洼县"," 盘山县"," 市辖区"," 银州区"," 清河区"," 铁岭县"," 西丰县"," 昌图县"," 调兵山市"," 开原市");
				var county45 = new Array(" 双塔区"," 龙城区"," 朝阳县"," 建平县"," 喀喇沁左翼蒙古族自治县"," 北票市"," 凌源市");
				var county46 = new Array(" 连山区"," 龙港区"," 南票区"," 绥中县"," 建昌县"," 兴城市");
				var county47 = new Array(" 南关区"," 宽城区"," 朝阳区"," 二道区"," 绿园区"," 双阳区"," 农安县"," 九台市"," 榆树市"," 德惠市");
				var countyLiaoNing = new Array(county34,county35,county36,county37,county38,county39,county40,county41,county42,county43,county44,county45,county46,county47);
				
				var county48 = new Array(" 昌邑区"," 龙潭区"," 船营区"," 丰满区"," 永吉县"," 蛟河市"," 桦甸市"," 舒兰市"," 磐石市");
				var county49 = new Array(" 铁西区"," 铁东区"," 梨树县"," 伊通满族自治县"," 公主岭市"," 双辽市"," 市辖区"," 龙山区"," 西安区"," 东丰县"," 东辽县");
				var county50 = new Array(" 东昌区"," 二道江区"," 通化县"," 辉南县"," 柳河县"," 梅河口市"," 集安市");
				var county51 = new Array(" 八道江区"," 江源区(**)"," 抚松县"," 靖宇县"," 长白朝鲜族自治县"," 临江市");
				var county52 = new Array(" 宁江区"," 前郭尔罗斯蒙古族自治县"," 长岭县"," 乾安县"," 扶余县");
				var county53 = new Array(" 洮北区"," 镇赉县"," 通榆县"," 洮南市"," 大安市"," 延吉市"," 图们市"," 敦化市"," 珲春市"," 龙井市"," 和龙市"," 汪清县"," 安图县");
				var county54 = new Array(" 道里区"," 南岗区"," 道外区"," 平房区"," 松北区"," 香坊区"," 呼兰区"," 阿城区"," 依兰县"," 方正县"," 宾县"," 巴彦县"," 木兰县"," 通河县"," 延寿县"," 双城市"," 尚志市"," 五常市");
				var county55 = new Array(" 龙沙区"," 建华区"," 铁锋区"," 昂昂溪区"," 富拉尔基区"," 碾子山区"," 梅里斯达斡尔族区"," 龙江县"," 依安县"," 泰来县"," 甘南县"," 富裕县"," 克山县"," 克东县"," 拜泉县"," 讷河市");
				var county56 = new Array(" 鸡冠区"," 恒山区"," 滴道区"," 梨树区"," 城子河区"," 麻山区"," 鸡东县"," 虎林市"," 密山市");
				var countyJiLin = new Array(county48,county49,county50,county51,county52,county53,county54,county55,county56);
				
				var county57 = new Array(" 道里区"," 南岗区"," 道外区"," 平房区"," 松北区"," 香坊区"," 呼兰区"," 阿城区"," 依兰县"," 方正县"," 宾县"," 巴彦县"," 木兰县"," 通河县"," 延寿县"," 双城市"," 尚志市"," 五常市");
				var county58 = new Array(" 龙沙区"," 建华区"," 铁锋区"," 昂昂溪区"," 富拉尔基区"," 碾子山区"," 梅里斯达斡尔族区"," 龙江县"," 依安县"," 泰来县"," 甘南县"," 富裕县"," 克山县"," 克东县"," 拜泉县"," 讷河市");
				var county59 = new Array(" 鸡冠区"," 恒山区"," 滴道区"," 梨树区"," 城子河区"," 麻山区"," 鸡东县"," 虎林市"," 密山市");
				var county60 = new Array(" 向阳区"," 工农区"," 南山区"," 兴安区"," 东山区"," 兴山区"," 萝北县"," 绥滨县");
				var county61 = new Array(" 尖山区"," 岭东区"," 四方台区"," 宝山区"," 集贤县"," 友谊县"," 宝清县"," 饶河县");
				var county62 = new Array(" 萨尔图区"," 龙凤区"," 让胡路区"," 红岗区"," 大同区"," 肇州县"," 肇源县"," 林甸县"," 杜尔伯特蒙古族自治县");
				var county63 = new Array(" 伊春区"," 南岔区"," 友好区"," 西林区"," 翠峦区"," 新青区"," 美溪区"," 金山屯区"," 五营区"," 乌马河区"," 汤旺河区"," 带岭区"," 乌伊岭区"," 红星区"," 上甘岭区"," 嘉荫县"," 铁力市");
				var county64 = new Array(" 向阳区"," 前进区"," 东风区"," 郊区"," 桦南县"," 桦川县"," 汤原县"," 抚远县"," 同江市"," 富锦市");
				var county65 = new Array(" 新兴区"," 桃山区"," 茄子河区"," 勃利县");
				var county66 = new Array(" 东安区"," 阳明区"," 爱民区"," 西安区"," 东宁县"," 林口县"," 绥芬河市"," 海林市"," 宁安市"," 穆棱市");
				var county67 = new Array(" 爱辉区"," 嫩江县"," 逊克县"," 孙吴县"," 北安市"," 五大连池市");
				var county68 = new Array(" 北林区"," 望奎县"," 兰西县"," 青冈县"," 庆安县"," 明水县"," 绥棱县"," 安达市"," 肇东市"," 海伦市");
				var county69 = new Array(" 加格达奇区"," 松岭区"," 新林区"," 呼中区"," 呼玛县"," 塔河县"," 漠河县");
				var countyHeiLongJiang = new Array(county57,county58,county59,county60,county61,county62,county63,county64,county65,county66,county67,county68,county69);
				
				var county70 = new Array(" 玄武区"," 白下区"," 秦淮区"," 建邺区"," 鼓楼区"," 下关区"," 浦口区"," 栖霞区"," 雨花台区"," 江宁区"," 六合区"," 溧水县"," 高淳县");
				var county71 = new Array(" 崇安区"," 南长区"," 北塘区"," 锡山区"," 惠山区"," 滨湖区"," 江阴市"," 宜兴市");
				var county72 = new Array(" 鼓楼区"," 云龙区"," 九里区"," 贾汪区"," 泉山区"," 丰县"," 沛县"," 铜山县"," 睢宁县"," 新沂市"," 邳州市");
				var county73 = new Array(" 天宁区"," 钟楼区"," 戚墅堰区"," 新北区"," 武进区"," 溧阳市"," 金坛市");
				var county74 = new Array(" 沧浪区"," 平江区"," 金阊区"," 虎丘区"," 吴中区"," 相城区"," 常熟市"," 张家港市"," 昆山市"," 吴江市"," 太仓市");
				var county75 = new Array(" 崇川区"," 港闸区"," 海安县"," 如东县"," 启东市"," 如皋市"," 通州市"," 海门市");
				var county76 = new Array(" 连云区"," 新浦区"," 海州区"," 赣榆县"," 东海县"," 灌云县"," 灌南县");
				var county77 = new Array(" 清河区"," 楚州区"," 淮阴区"," 清浦区"," 涟水县"," 洪泽县"," 盱眙县"," 金湖县");
				var county78 = new Array(" 亭湖区"," 盐都区"," 响水县"," 滨海县"," 阜宁县"," 射阳县"," 建湖县"," 东台市"," 大丰市");
				var county79 = new Array(" 广陵区"," 邗江区"," 维扬区"," 宝应县"," 仪征市"," 高邮市"," 江都市");
				var county80 = new Array(" 京口区"," 润州区"," 丹徒区"," 丹阳市"," 扬中市"," 句容市");
				var county81 = new Array(" 海陵区"," 高港区"," 兴化市"," 靖江市"," 泰兴市"," 姜堰市");
				var county82 = new Array(" 宿城区"," 宿豫区"," 沭阳县"," 泗阳县"," 泗洪县");
				var countyJiangSu = new Array(county70,county71,county72,county73,county74,county75,county76,county77,county78,county79,county80,county81,county82);
				
				var county83 = new Array(" 上城区"," 下城区"," 江干区"," 拱墅区"," 西湖区"," 滨江区"," 萧山区"," 余杭区"," 桐庐县"," 淳安县"," 建德市"," 富阳市"," 临安市");
				var county84 = new Array(" 海曙区"," 江东区"," 江北区"," 北仑区"," 镇海区"," 鄞州区"," 象山县"," 宁海县"," 余姚市"," 慈溪市"," 奉化市");
				var county85 = new Array(" 鹿城区"," 龙湾区"," 瓯海区"," 洞头县"," 永嘉县"," 平阳县"," 苍南县"," 文成县"," 泰顺县"," 瑞安市"," 乐清市");
				var county86 = new Array(" 南湖区(**)"," 秀洲区"," 嘉善县"," 海盐县"," 海宁市"," 平湖市"," 桐乡市");
				var county87 = new Array(" 吴兴区"," 南浔区"," 德清县"," 长兴县"," 安吉县");
				var county88 = new Array("越城区"," 绍兴县"," 新昌县"," 诸暨市"," 上虞市"," 嵊州市");
				var county89 = new Array(" 婺城区"," 金东区"," 武义县"," 浦江县"," 磐安县"," 兰溪市"," 义乌市"," 东阳市"," 永康市");
				var county90 = new Array(" 柯城区"," 衢江区"," 常山县"," 开化县"," 龙游县"," 江山市");
				var county91 = new Array(" 定海区"," 岱山县"," 嵊泗县");
				var county92 = new Array(" 椒江区"," 黄岩区"," 路桥区"," 玉环县"," 三门县"," 天台县"," 仙居县"," 温岭市"," 临海市");
				var county93 = new Array(" 莲都区"," 青田县"," 缙云县"," 遂昌县"," 松阳县"," 云和县"," 庆元县"," 景宁畲族自治县"," 龙泉市");
				var countyZheJiang = new Array(county83,county84,county85,county86,county87,county88,county89,county90,county91,county92,county93);
				
				var county94 = new Array(" 瑶海区"," 庐阳区"," 蜀山区"," 包河区"," 长丰县"," 肥东县"," 肥西县");
				var county95 = new Array(" 镜湖区"," 弋江区"," 鸠江区"," 三山区"," 芜湖县"," 繁昌县"," 南陵县");
				var county96 = new Array(" 龙子湖区"," 蚌山区"," 禹会区"," 淮上区"," 怀远县"," 五河县"," 固镇县");
				var county97 = new Array(" 大通区"," 田家庵区"," 谢家集区"," 八公山区"," 潘集区"," 凤台县");
				var county98 = new Array(" 金家庄区"," 花山区"," 雨山区"," 当涂县");
				var county99 = new Array(" 杜集区"," 相山区"," 烈山区"," 濉溪县");
				var county100 = new Array(" 铜官山区"," 狮子山区"," 郊区"," 铜陵县");
				var county101 = new Array(" 迎江区"," 大观区"," 宜秀区"," 怀宁县"," 枞阳县"," 潜山县"," 太湖县"," 宿松县"," 望江县"," 岳西县"," 桐城市");
				var county102 = new Array(" 屯溪区"," 黄山区"," 徽州区"," 歙县"," 休宁县"," 黟县"," 祁门县");
				var county103 = new Array(" 琅琊区"," 南谯区"," 来安县"," 全椒县"," 定远县"," 凤阳县"," 天长市"," 明光市");
				var county104 = new Array(" 颍州区"," 颍东区"," 颍泉区"," 临泉县"," 太和县"," 阜南县"," 颍上县"," 界首市");
				var county105 = new Array(" 埇桥区"," 砀山县"," 萧县"," 灵璧县"," 泗县");
				var county106 = new Array(" 居巢区"," 庐江县"," 无为县"," 含山县"," 和县");
				var county107 = new Array(" 金安区"," 裕安区"," 寿县"," 霍邱县"," 舒城县"," 金寨县"," 霍山县");
				var county108 = new Array(" 谯城区"," 涡阳县"," 蒙城县"," 利辛县");
				var county109 = new Array(" 贵池区"," 东至县"," 石台县"," 青阳县");
				var county110 = new Array(" 宣州区"," 郎溪县"," 广德县"," 泾县"," 绩溪县"," 旌德县"," 宁国市");
				var countyAnHui = new Array(county94,county95,county96,county97,county98,county99,county100,county101,county102,county103,county104,county105,county106,county107,county108,county109,county110);
				
				var county111 = new Array(" 鼓楼区"," 台江区"," 仓山区"," 马尾区"," 晋安区"," 闽侯县"," 连江县"," 罗源县"," 闽清县"," 永泰县"," 平潭县"," 福清市"," 长乐市");
				var county112 = new Array(" 思明区"," 海沧区"," 湖里区"," 集美区"," 同安区"," 翔安区");
				var county113 = new Array(" 城厢区"," 涵江区"," 荔城区"," 秀屿区"," 仙游县");
				var county114 = new Array(" 梅列区"," 三元区"," 明溪县"," 清流县"," 宁化县"," 大田县"," 尤溪县"," 沙县"," 将乐县"," 泰宁县"," 建宁县"," 永安市");
				var county115 = new Array(" 鲤城区"," 丰泽区"," 洛江区"," 泉港区"," 惠安县"," 安溪县"," 永春县"," 德化县"," 金门县"," 石狮市"," 晋江市"," 南安市");
				var county116 = new Array(" 芗城区"," 龙文区"," 云霄县"," 漳浦县"," 诏安县"," 长泰县"," 东山县"," 南靖县"," 平和县"," 华安县"," 龙海市");
				var county117 = new Array(" 延平区"," 顺昌县"," 浦城县"," 光泽县"," 松溪县"," 政和县"," 邵武市"," 武夷山市"," 建瓯市"," 建阳市");
				var county118 = new Array(" 新罗区"," 长汀县"," 永定县"," 上杭县"," 武平县"," 连城县"," 漳平市");
				var county119 = new Array(" 蕉城区"," 霞浦县"," 古田县"," 屏南县"," 寿宁县"," 周宁县"," 柘荣县"," 福安市"," 福鼎市");
				var countyFuJian = new Array(county111,county112,county113,county114,county115,county116,county117,county118,county119);
				
				var county120 = new Array(" 东湖区"," 西湖区"," 普陀区"," 青云谱区"," 湾里区"," 青山湖区"," 南昌县"," 新建县"," 安义县"," 进贤县");
				var county121 = new Array(" 昌江区"," 珠山区"," 浮梁县"," 乐平市"," 市辖区"," 安源区"," 湘东区"," 莲花县"," 上栗县"," 芦溪县");
				var county122 = new Array(" 庐山区"," 浔阳区"," 九江县"," 武宁县"," 修水县"," 永修县"," 德安县"," 星子县"," 都昌县"," 湖口县"," 彭泽县"," 瑞昌市");
				var county123 = new Array(" 渝水区"," 分宜县"," 市辖区"," 月湖区"," 余江县"," 贵溪市");
				var county124 = new Array(" 月湖区"," 余江县"," 贵溪市");
				var county125 = new Array(" 章贡区"," 赣县"," 信丰县"," 大余县"," 上犹县"," 崇义县"," 安远县"," 龙南县"," 定南县"," 全南县"," 宁都县"," 于都县"," 兴国县"," 会昌县"," 寻乌县"," 石城县"," 瑞金市"," 南康市");
				var county126 = new Array(" 吉州区"," 青原区"," 吉安县"," 吉水县"," 峡江县"," 新干县"," 永丰县"," 泰和县"," 遂川县"," 万安县"," 安福县"," 永新县"," 井冈山市");
				var county127 = new Array(" 袁州区"," 奉新县"," 万载县"," 上高县"," 宜丰县"," 靖安县"," 铜鼓县"," 丰城市"," 樟树市"," 高安市");
				var county128 = new Array(" 临川区"," 南城县"," 黎川县"," 南丰县"," 崇仁县"," 乐安县"," 宜黄县"," 金溪县"," 资溪县"," 东乡县"," 广昌县");
				var county129 = new Array(" 信州区"," 上饶县"," 广丰县"," 玉山县"," 铅山县"," 横峰县"," 弋阳县"," 余干县"," 鄱阳县"," 万年县"," 婺源县"," 德兴市");
				var county130 = new Array(" 历下区"," 市中区"," 槐荫区"," 天桥区"," 历城区"," 长清区"," 平阴县"," 济阳县"," 商河县"," 章丘市");
				var countyJiangXi = new Array(county120,county121,county122,county123,county124,county125,county126,county127,county128,county129,county130);
				
				var county131 = new Array(" 市南区"," 市北区"," 四方区"," 黄岛区"," 崂山区"," 李沧区"," 城阳区"," 胶州市"," 即墨市"," 平度市"," 胶南市"," 莱西市");
				var county132 = new Array(" 淄川区"," 张店区"," 博山区"," 临淄区"," 周村区"," 桓台县"," 高青县"," 沂源县");
				var county133 = new Array(" 市中区"," 薛城区"," 峄城区"," 台儿庄区"," 山亭区"," 滕州市");
				var county134 = new Array(" 东营区"," 河口区"," 垦利县"," 利津县"," 广饶县");
				var county135 = new Array(" 芝罘区"," 福山区"," 牟平区"," 莱山区"," 长岛县"," 龙口市"," 莱阳市"," 莱州市"," 蓬莱市"," 招远市"," 栖霞市"," 海阳市");
				var county136 = new Array(" 潍城区"," 寒亭区"," 坊子区"," 奎文区"," 临朐县"," 昌乐县"," 青州市"," 诸城市"," 寿光市"," 安丘市"," 高密市"," 昌邑市");
				var county137 = new Array(" 市中区"," 任城区"," 微山县"," 鱼台县"," 金乡县"," 嘉祥县"," 汶上县"," 泗水县"," 梁山县"," 曲阜市"," 兖州市"," 邹城市");
				var county138 = new Array(" 泰山区"," 岱岳区(**)");
				var county139 = new Array(" 宁阳县"," 东平县"," 新泰市"," 肥城市");
				var county140 = new Array(" 环翠区"," 文登市"," 荣成市"," 乳山市");
				var county141 = new Array(" 东港区"," 岚山区"," 五莲县"," 莒县");
				var county142 = new Array(" 莱城区"," 钢城区");
				var county143 = new Array(" 兰山区"," 罗庄区"," 河东区"," 沂南县"," 郯城县"," 沂水县"," 苍山县"," 费县"," 平邑县"," 莒南县"," 蒙阴县"," 临沭县");
				var county144 = new Array(" 德城区"," 陵县"," 宁津县"," 庆云县"," 临邑县"," 齐河县"," 平原县"," 夏津县"," 武城县"," 乐陵市"," 禹城市");
				var county145 = new Array(" 东昌府区"," 阳谷县"," 莘县"," 茌平县"," 东阿县"," 冠县"," 高唐县"," 临清市");
				var county146 = new Array(" 滨城区"," 惠民县"," 阳信县"," 无棣县"," 沾化县"," 博兴县"," 邹平县");
				var county147 = new Array( " 牡丹区"," 曹县"," 单县"," 成武县"," 巨野县"," 郓城县"," 鄄城县"," 定陶县"," 东明县");
				var countyShandong = new Array(county131,county132,county133,county134,county135,county136,county137,county138,county139,county140,county141,county142,county143,county144,county145,county146,county147);
				
				var county148 = new Array(" 中原区"," 二七区"," 管城回族区"," 金水区"," 上街区"," 惠济区"," 中牟县"," 巩义市"," 荥阳市"," 新密市"," 新郑市"," 登封市");
				var county149 = new Array(" 龙亭区"," 顺河回族区"," 鼓楼区"," 禹王台区"," 金明区"," 杞县"," 通许县"," 尉氏县"," 开封县"," 兰考县");
				var county150 = new Array(" 老城区"," 西工区"," 瀍河回族区(**)"," 涧西区"," 吉利区"," 洛龙区(**)"," 孟津县"," 新安县"," 栾川县"," 嵩县"," 汝阳县"," 宜阳县"," 洛宁县"," 伊川县"," 偃师市");
				var county151 = new Array(" 新华区"," 卫东区"," 石龙区"," 湛河区"," 宝丰县"," 叶县"," 鲁山县"," 郏县"," 舞钢市"," 汝州市");
				var county152 = new Array(" 文峰区"," 北关区"," 殷都区"," 龙安区"," 安阳县"," 汤阴县"," 滑县"," 内黄县"," 林州市");
				var county153 = new Array(" 鹤山区"," 山城区"," 淇滨区"," 浚县"," 淇县");
				var county154 = new Array(" 红旗区"," 卫滨区"," 凤泉区"," 牧野区"," 新乡县"," 获嘉县"," 原阳县"," 延津县"," 封丘县"," 长垣县"," 卫辉市"," 辉县市");
				var county155 = new Array(" 解放区"," 中站区"," 马村区"," 山阳区"," 修武县"," 博爱县"," 武陟县"," 温县"," 济源市"," 沁阳市"," 孟州市");
				var county156 = new Array(" 华龙区"," 清丰县"," 南乐县"," 范县"," 台前县"," 濮阳县");
				var county157 = new Array(" 魏都区"," 许昌县"," 鄢陵县"," 襄城县"," 禹州市"," 长葛市");
				var county158 = new Array(" 源汇区"," 郾城区"," 召陵区"," 舞阳县"," 临颍县");
				var county159 = new Array(" 湖滨区"," 渑池县"," 陕县"," 卢氏县"," 义马市"," 灵宝市");
				var county160 = new Array(" 宛城区"," 卧龙区"," 南召县"," 方城县"," 西峡县"," 镇平县"," 内乡县"," 淅川县"," 社旗县"," 唐河县"," 新野县"," 桐柏县"," 邓州市");
				var county161 = new Array(" 梁园区"," 睢阳区"," 民权县"," 睢县"," 宁陵县"," 柘城县"," 虞城县"," 夏邑县"," 永城市");
				var county162 = new Array(" 浉河区"," 平桥区"," 罗山县"," 光山县"," 新县"," 商城县"," 固始县"," 潢川县"," 淮滨县"," 息县");
				var county163 = new Array(" 川汇区"," 扶沟县"," 西华县"," 商水县"," 沈丘县"," 郸城县"," 淮阳县"," 太康县"," 鹿邑县"," 项城市");
				var county164 = new Array(" 驿城区"," 西平县"," 上蔡县"," 平舆县"," 正阳县"," 确山县"," 泌阳县"," 汝南县"," 遂平县"," 新蔡县");
				
				var countyHeNan = new Array(county148,county149,county150,county151,county152,county153,county154,county155,county156,county157,county158,county159,county160,county161,county162,county163,county164);
				
				var county165 = new Array(" 江岸区"," 江汉区"," 硚口区"," 汉阳区"," 武昌区"," 青山区"," 洪山区"," 东西湖区"," 汉南区"," 蔡甸区"," 江夏区"," 黄陂区"," 新洲区");
				var county166 = new Array(" 黄石港区"," 西塞山区"," 下陆区"," 铁山区"," 阳新县"," 大冶市");
				var county167 = new Array(" 茅箭区"," 张湾区"," 郧县"," 郧西县"," 竹山县"," 竹溪县"," 房县"," 丹江口市");
				var county168 = new Array(" 西陵区"," 伍家岗区"," 点军区"," 猇亭区"," 夷陵区"," 远安县"," 兴山县"," 秭归县"," 长阳土家族自治县"," 五峰土家族自治县"," 宜都市"," 当阳市"," 枝江市");
				var county169 = new Array(" 襄城区"," 樊城区"," 襄阳区"," 南漳县"," 谷城县"," 保康县"," 老河口市"," 枣阳市"," 宜城市");
				var county170 = new Array(" 梁子湖区"," 华容区"," 鄂城区");
				var county171 = new Array(" 东宝区"," 掇刀区"," 京山县"," 沙洋县"," 钟祥市");
				var county172 = new Array(" 孝南区"," 孝昌县"," 大悟县"," 云梦县"," 应城市"," 安陆市"," 汉川市");
				var county173 = new Array(" 沙市区"," 荆州区"," 公安县"," 监利县"," 江陵县"," 石首市"," 洪湖市"," 松滋市");
				var county174 = new Array(" 黄州区"," 团风县"," 红安县"," 罗田县"," 英山县"," 浠水县"," 蕲春县"," 黄梅县"," 麻城市"," 武穴市");
				var county175 = new Array(" 咸安区"," 嘉鱼县"," 通城县"," 崇阳县"," 通山县"," 赤壁市");
				var county176 = new Array(" 曾都区"," 广水市"," 恩施市"," 利川市"," 建始县"," 巴东县"," 宣恩县"," 咸丰县"," 来凤县"," 鹤峰县"," 仙桃市"," 潜江市"," 天门市"," 神农架林区");
				var countyHuBei = new Array(county165,county166,county167,county168,county169,county170,county171,county172,county173,county174,county175,county176);
				
				var county177 = new Array(" 芙蓉区"," 天心区"," 岳麓区"," 开福区"," 雨花区"," 长沙县"," 望城县"," 宁乡县"," 浏阳市");
				var county178 = new Array(" 荷塘区"," 芦淞区"," 石峰区"," 天元区"," 株洲县"," 攸县"," 茶陵县"," 炎陵县"," 醴陵市");
				var county179 = new Array(" 雨湖区"," 岳塘区"," 湘潭县"," 湘乡市"," 韶山市");
				var county180 = new Array(" 珠晖区"," 雁峰区"," 石鼓区"," 蒸湘区"," 南岳区"," 衡阳县"," 衡南县"," 衡山县"," 衡东县"," 祁东县"," 耒阳市"," 常宁市");
				var county181 = new Array(" 双清区"," 大祥区"," 北塔区"," 邵东县"," 新邵县"," 邵阳县"," 隆回县"," 洞口县"," 绥宁县"," 新宁县"," 城步苗族自治县"," 武冈市");
				var county182 = new Array(" 岳阳楼区"," 云溪区"," 君山区"," 岳阳县"," 华容县"," 湘阴县"," 平江县"," 汨罗市"," 临湘市");
				var county183 = new Array(" 武陵区"," 鼎城区"," 安乡县"," 汉寿县"," 澧县"," 临澧县"," 桃源县"," 石门县"," 津市市");
				var county184 = new Array(" 永定区"," 武陵源区"," 慈利县"," 桑植县");
				var county185 = new Array(" 资阳区"," 赫山区"," 南县"," 桃江县"," 安化县"," 沅江市");
				var county186 = new Array(" 北湖区"," 苏仙区"," 桂阳县"," 宜章县"," 永兴县"," 嘉禾县"," 临武县"," 汝城县"," 桂东县"," 安仁县"," 资兴市");
				var county187 = new Array(" 零陵区"," 冷水滩区"," 祁阳县"," 东安县"," 双牌县"," 道县"," 江永县"," 宁远县"," 蓝山县"," 新田县"," 江华瑶族自治县");
				var county188 = new Array(" 鹤城区"," 中方县"," 沅陵县"," 辰溪县"," 溆浦县"," 会同县"," 麻阳苗族自治县"," 新晃侗族自治县"," 芷江侗族自治县"," 靖州苗族侗族自治县"," 通道侗族自治县"," 洪江市");
				var county189 = new Array(" 娄星区"," 双峰县"," 新化县"," 冷水江市"," 涟源市"," 吉首市"," 泸溪县"," 凤凰县"," 花垣县"," 保靖县"," 古丈县"," 永顺县"," 龙山县");
				var countyHuNan = new Array(county177,county178,county179,county180,county181,county182,county183,county184,county185,county186,county187,county188,county189);
				
				var county190 = new Array(" 荔湾区"," 越秀区"," 海珠区"," 天河区"," 白云区"," 黄埔区"," 番禺区"," 花都区"," 南沙区"," 萝岗区"," 增城市"," 从化市");
				var county191 = new Array(" 武江区"," 浈江区"," 曲江区"," 始兴县"," 仁化县"," 翁源县"," 乳源瑶族自治县"," 新丰县"," 乐昌市"," 南雄市");
				var county192 = new Array("资源县","永福县","梧州市","岑溪市","苍梧县 ");
				var county193 = new Array("资源县","永福县","梧州市","岑溪市","苍梧县 ");
				var countyGuangDong = new Array(county190,county191,county191,county192,county193);
				
				var county211 = new Array(" 南宁市","武鸣县","隆安县","马山县","上林县","宾阳县","横 县","柳州市","柳江县");
				var county212 = new Array("桂林市","阳朔县","临桂县","灵川县","全州县","平乐县","兴安县","灌阳县","荔浦县");
				var county213 = new Array("资源县","永福县","梧州市","岑溪市","苍梧县 ");
				var county214 = new Array("资源县","永福县","梧州市","岑溪市","苍梧县");
				var countyGuangXiZZZZQ = new Array(county211,county212,county213,county214);
				
				
				var county215 = new Array("海口市","琼海市","儋州市","文昌市");
				var county216 = new Array("临高县","三亚市","五指山市");
				
				var countyHaiNan = new Array(county215,county216);
				
				var county217 = new Array("成都市","彭州市","邛崃市","崇州市","金堂县","郫 县 "," 新津县");
				var county218 = new Array("大邑县","自贡市","荣   县","富顺县","米易县","盐边县","泸州市");
				var county219 = new Array("剑阁县","苍溪县","遂宁市","射洪县","蓬溪县");
				var county220 = new Array("蓬安县","仪陇县","南部县","西充县","眉山市");
				
				var countySiChuan = new Array(county217,county218,county219,county220);
				
				var county221 = new Array("贵阳市","清镇市","开阳县","修文县","息烽县","水城县");
				var county222 = new Array("云岩区 ","花溪区","乌当区","白云区","小河区","开阳县");
				var county223 = new Array("息烽县","修文县","清镇市","钟山区");
				var county224 = new Array("六枝特区","水城县","盘县","红花岗区");
				var countyGuiZhou = new Array(county221,county222,county223,county224);
				
				var county225 = new Array("五华区","官渡区","西山区","东川区");
				var county226 = new Array("晋宁县","富民县","宜良县","石林彝族自治县");
				var county227 = new Array("嵩明县","禄劝彝族苗族自治县","寻甸回族彝族自治县","安宁市");
				var county228 = new Array("麒麟区","马龙县","陆良县","师宗县");
				var county229 = new Array("罗平县","富源县","会泽县","宣威市");
				var countyYunNan = new Array(county225,county226,county227,county228,county229);
				
				var county233 = new Array("拉萨市","林周县","达孜县 ","尼木县 ","当雄县"," 曲水县 ");
				var county234 = new Array("巴青县 ","聂荣县 ","尼玛县 ","比如县");
				var county235 = new Array("革吉县","日土县 ","札达县"," 改则县 ","林芝县");
				var countyXiZang = new Array(county233,county234,county235);
				
				var county236 = new Array("西安市 ","高陵县"," 蓝田县 ","户 县 ","周至县");
				var county237 = new Array("凤翔县"," 陇 县 ","太白县 ","麟游县");
				var county238 = new Array("礼泉县 ","泾阳县"," 永寿县");
				var countyShaXi = new Array(county236,county237,county238);
				
				var county239 = new Array("兰州市","永登县 ","榆中县 ","皋兰县 ","金昌市");
				var county240 = new Array("会宁县","天水市","武山县","甘谷县 ");
				var county241 = new Array("华亭县"," 泾川县"," 庄浪县");
				var countyGanSu = new Array(county239,county240,county241);
				
				var county242 = new Array("西宁市 ","湟源县"," 湟中县 ","平安县 ","乐都县"," 海晏县");
				var county243 = new Array("泽库县"," 尖扎县"," 共和县"," 同德县");
				var county244 = new Array("乌兰县 ","天峻县"," 都兰县");
				var countyQingHai = new Array(county242,county243,county244);
				
				var county245 = new Array("银川市 ","灵武市"," 永宁县 ","贺兰县");
				var county246 = new Array("西吉县"," 隆德县 ","泾源县 ","彭阳县 ","中卫市 ","中宁县 ","海原县");
				var county247 = new Array("石嘴山市 ","青铜峡市");
				var countyNingXia = new Array(county245,county246,county247);
				
				var county248 = new Array("鄯善县 ","哈密市"," 伊吾县 ","和田市"," 和田县");
				var county249 = new Array("于田县"," 墨玉县"," 温宿县");
				var county250 = new Array("沙雅县"," 拜城县 ","库车县"," 柯坪县"," 新和");
				var countyXinJiang = new Array(county248,county249,county250);
				
				var county251 = new Array("---");
				var countyBeiJiang = new Array(county251);
				
				var county252 = new Array("---");
				var countyTianJian = new Array(county252);
				
				var county253 = new Array("---");
				var countyChongQing = new Array(county253);
				
				var county254 = new Array("---");
				var countyShangHai = new Array(county254);
				
				var county255 = new Array("---");
				var countyTaiWan = new Array(county255);
				
				var county256 = new Array("---");
				var countyXiangGang = new Array(county256);
				
				var county257 = new Array("---");
				var countyAoMen = new Array(county257);
				var county = new Array(new Array(),new Array(),countyBeiJiang,countyTianJian,countyChongQing,countyShangHai,countyHeBie,countyShanXi,countyNeiMengGu,countyLiaoNing,countyJiLin,countyHeiLongJiang,countyJiangSu,countyZheJiang,countyAnHui,countyFuJian,countyJiangXi,countyShandong,countyHeNan,countyHeBie,countyHeNan,countyGuangDong,countyGuangXiZZZZQ,countyHaiNan,countySiChuan,countyGuiZhou,countyYunNan,countyXiZang,countyShaXi,countyGanSu,countyQingHai,countyNingXia,countyXinJiang,countyTaiWan,countyXiangGang,countyAoMen);
				
				
				$("body").append("<select id='pro'></select>");
				$("<select id='city'></select>").appendTo($("body"));
				$("<select id='county'></select>").appendTo($("body"));
				
				$(pro).each(function(i) {
					$("#pro").append("<option value='"+i+"'>"+this+"</option>")
				})
				$("#pro").change(function(){
					$("#city").empty()
					$(city[$(this).val()]).each(function(j){
							$("#city").append("<option value='"+j+"'>"+this+"</option>")
						$("#city").change(function(){
							$("#county").empty()
							$(county[$("#pro").val()][$(this).val()]).each(function(){
									$("#county").append("<option>"+this+"</option>")
							})
						})
						$("#city").change();
					})
				})
				$("#pro").change();
			})
		</script>	
	</head>
	<body>
	</body>
</html>