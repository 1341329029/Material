-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 10 月 04 日 01:26
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `material`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` mediumint(20) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(30) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='管理员表' AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(45, 'admin1', 'e10adc3949ba59abbe56e057f20f883e'),
(46, 'admin_content', 'e10adc3949ba59abbe56e057f20f883e'),
(47, 'admin_article', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '文章标题',
  `keywords` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '关键词',
  `desc` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '描述',
  `author` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT '作者',
  `thumb` varchar(160) CHARACTER SET utf8 DEFAULT NULL COMMENT '缩略图',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `click` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点击数',
  `zan` mediumint(9) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `rec` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:不推荐1：推荐',
  `time` int(11) NOT NULL COMMENT '发布时间',
  `cateid` mediumint(9) NOT NULL COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `keywords`, `desc`, `author`, `thumb`, `content`, `click`, `zan`, `rec`, `time`, `cateid`) VALUES
(4, '百度', '百度', '　松竹有弦歌，清风送我襟。嗅着风的清香，悦着鸟的鸣叫，不由加快了脚步。原来，风摇翠竹，那络绎不绝的竹海正摇曳着风的节拍，沙沙作响，翩翩起舞。一缕柔情邂逅的时光，点点的美好微微的搁浅。吮吸着竹的芳香，品着竹的气息，风在流动，一种神清气爽，幽静沁凉不觉直触了心底，倏尔植入了心中的原野，心境澄时悠远。', '杨赫', '\\uploads/20180807\\0c332e169e8e3803dcdc275a9c95dd89.jpg', '<p>　 夏天，竹林是静下心的好地方。那么，炎炎夏日，不妨就让我们一起竖起耳朵，拭抹<a href="http://www.duwenzhang.com/wenzhang/xinqingriji/" marked="1">心情</a>，静听竹海风声。</p><p>　　清晨，生机盎然的竹林，清香四溢，阳光从竹林间的罅隙里洒落下来。忽而，美妙的梦幻几声婉转的鸟鸣打破了这竹林的静谧，霎时热闹了起来，顿时四周没有了喧哗，一个宁静如初的世界独留这清新的韵味濯洗着<a href="http://www.duwenzhang.com/huati/xinling/index1.html" marked="1">心灵</a>。</p><p>　　松竹有弦歌，清风送我襟。嗅着风的清香，悦着鸟的鸣叫，不由加快了脚步。原来，风摇翠竹，那络绎不绝的竹海正摇曳着风的节拍，沙沙作响，翩翩起舞。一缕柔情邂逅的时光，点点的<a href="http://www.duwenzhang.com/huati/meihao/index1.html" marked="1">美好</a>微微的搁浅。吮吸着竹的芳香，品着竹的气息，风在流动，一种神清气爽，幽静沁凉不觉直触了心底，倏尔植入了心中的原野，心境澄时悠远。</p><p>　　曾是惊鸿照景来，“独坐幽篁里，弹琴复长啸。”漫步其中，和着满眼的翠绿，万点风竹轻轻摇动，炯娜多姿，斜舞轻影。一抹灵性携着清新淡雅的撼动，轻吟浅唱，抛开喧嚣的红尘，穿越世事的纷扰，扑面而来。人在画中游，飘逸唯美的画面，绿意温婉环抱，柔美空灵的音韵携着缭绕的清音翩飞，一隅悠然惬意的氛围涂抹着心灵的跃动细细的品味，一种心灵深处的豁然舒润着神思的空灵慢慢的雕琢，返璞归真融入自然的超然快感不由得怡然而生。浓了心，醉了情。</p><p>　　玲珑岁月，琥珀流年。轻盈岁月的脚步，深吸一口清新扑鼻。心底无声的渴望瞬然滑过了指尖的微凉，视线也顿然开朗。或许，总有那么一份触动，顷刻间拨动了心弦，情怀一抹清澈，静默一份洒脱，逐着心灵指引的方向徐徐前行。置身于这样的世界，倾时，浮躁的心境，瞬时融合在舒缓悠扬的梵音之中，著人向往。那这片时的流水之巅是谁在抚琴，高山之侧又是谁在聆听？是凝眸时那一刻定格成画，抑是微风拂面如一曲曲古筝琴韵在山间流淌浅唱，一幅幅水墨丹青在林间挥毫低吟。时光中最温柔的念，<a href="http://www.duwenzhang.com/huati/shengming/index1.html" marked="1">生命</a>中最美的缘，<a href="http://www.duwenzhang.com/huati/mishi/index1.html" marked="1">迷失</a>了双眼，遗却了时光的存在，恍留了静怡的时空，忘记了一切<a href="http://www.duwenzhang.com/huati/fannao/index1.html" marked="1">烦恼</a>，只想在淡淡的低语与清风合唱中独享这难得的清幽时光，只想在青葱岁月里处一隅幽静之地觅寻心灵的纯净放竭<a href="http://www.duwenzhang.com/huati/linghun/index1.html" marked="1">灵魂</a>，宁静优雅间回旋着清新的竹香，一见倾心，是任何言语也无法描述的心欢。孰是不愿走开，陶醉其中，含情聆听枝头鸟鸣，眼润满目翠色，时光深处，流年私语，轻握一份懂，那一种遇见仿佛是<a href="http://www.duwenzhang.com/huati/dengdai/index1.html" marked="1">等待</a>了千年的<a href="http://www.duwenzhang.com/huati/qipan/index1.html" marked="1">期盼</a>，行云般自在，流水般洒脱，甚时，归去，也只想做个闲人，对一张琴，一壶酒，一淡云。</p><p>　　“瞻彼淇奥，绿竹绮绮。”竹风知我意，送我清风来。时光洇染，浅浅行，深深爱，温润的年华，逐风细淌。一抹情深，音起，缘来，相守。细嗅竹香风来，清净淡雅，如痴如醉，闭上眼睛，一呼一吸之间全是满溢的遐思。漫游在竹海，轻揽岁月，一份<a href="http://www.duwenzhang.com/huati/pingdan/index1.html" marked="1">平淡</a>的心性，浮华中清修，一耳青色，一方心境，穿透静水深流叩<a href="http://www.duwenzhang.com/huati/kaixin/index1.html" marked="1">开心</a>灵的羽翼，放飞自己，刹时希翼的时光如清风般<a href="http://www.duwenzhang.com/huati/ziyou/index1.html" marked="1">自由</a>。这么近，又那么远。竹海听风，“闲庭信步竹林间，偷得浮生半日闲。”罢了，罢了。既然如此，那何不只让这一曲轻音漫过心际，烦躁尽消，顿悟了心灵深处的豁然，只让这心中最初的情怀一遍遍涤清，着心去静静品味这时光的絮语，着爱去感受这<a href="http://www.duwenzhang.com/wenzhang/shenghuosuibi/" marked="1">生活</a>的美好。</p><p><br/></p>', 95, 0, 0, 1533606343, 12),
(5, '链接专员', '你啊害怕', '大创', '杨赫', '\\uploads/20180807\\f8085f5784a14cd38111bc35abb0d19f.jpg', '<p>流年清欢，薄如琉璃；光阴浅念，淡若疏影。聆听岁月拂过耳边的声响，不晓竟沉醉不愿清醒。这时也不知哪里传来声声竹笛，如同游走在林间的精灵般，清新爽气，绊着心胸，以随遇而安的“轻佻”，将心儿轻轻的靠岸。时光素简，生命终究是场旅行。外在的风景，湿润的只是别人的双眼，<a href="http://www.duwenzhang.com/huati/neixin/index1.html" marked="1">内心</a>的丰盈，才是属于自己的<a href="http://www.duwenzhang.com/huati/yongheng/index1.html" marked="1">永恒</a>。那我们置身于这尘俗的一隅里，用难得的片刻宁静，静谧之中，要以怎样的姿态才能穿透繁华浮世，觅一方清幽之地给灵魂栖息？究竟该谱怎样的曲调，找回心灵深处的纯净轻柔低语？</p><p>　　时光搁浅，岁月流转。我们一路走来，告别了一段往事，走入了下一段风景。我们每个人也都在用不同的方式书写着自己的<a href="http://www.duwenzhang.com/wenzhang/renshengzheli/" marked="1">人生</a>。“你以怎样的<a href="http://www.duwenzhang.com/huati/taidu/index1.html" marked="1">态度</a>面对生活，生活就以怎样的态度回馈于你。”人生的风景说到底就是心灵的风景，心灵的菩提，那何不让我们在心中留一处原乡，寻婉<a href="http://www.duwenzhang.com/huati/zhenqing/index1.html" marked="1">真情</a>的幽香，拥着人生的漫长，让生命葱茏的美好，去抚慰生命的荒芜，做那个最真的自己，在经年的过往里，以一颗真挚的心来对待<a href="http://www.duwenzhang.com/huati/yuanfen/index1.html" marked="1">缘分</a>，以一颗温柔的心来爱护自己，以一颗美好的心来呵护生活，全心全意去体味生活的美，让那心中的浮华与喧嚣炎炎夏日在竹海听风中片失了这心灵轻颤的躁动。</p><p>　　岁月悠长，时光无涯。一些生命，几处时光，些许过往，一直伴着我们一路前行，我们也从未停止过在路上感受着这瞬间而变的“新”世界。风来自竹海，散在竹清。这充满希翼的时光依旧为我们涂写着这最美的馨香，那缘何不让我们倾时片刻驻足停留自己内心的悸动，拂去岁月的尘埃，时光的素笺上，倾心誊下这美好的期许，长长的路慢慢的走，这淡淡的歌我们一起深深的唱！</p><p><br/></p>', 14, 0, 0, 1533606436, 10),
(6, '腾讯', '校园', '', '杨赫', NULL, '<p>啊大方</p>', 39, 0, 0, 1533606476, 10),
(7, '比好评', '校园', '11111', '杨赫', '\\uploads/20180807\\2d732b7130b6f96f9a29c10b5bbfb151.jpg', '<table><tbody><tr class="firstRow"><td width="92" valign="top"><img src="/ueditor/php/upload/image/20180807/1533636201240631.jpg" title="1533636201240631.jpg" alt="banner.jpg"/><img src="/ueditor/php/upload/image/20180807/1533636149522338.jpg" title="1533636149522338.jpg" alt="b2.jpg"/></td><td width="92" valign="top" style="word-break: break-all;">1</td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td></tr><tr><td width="92" valign="top" style="word-break: break-all;">2</td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top" style="word-break: break-all;">45</td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td></tr><tr><td width="92" valign="top"><br/></td><td width="92" valign="top" style="word-break: break-all;">2</td><td width="92" valign="top" style="word-break: break-all;">3</td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td><td width="92" valign="top"><br/></td></tr></tbody></table><p><br/></p>', 21, 0, 0, 1533636040, 17),
(8, '大学生创意大赛', '', '', '杨赫', '\\uploads/20180807\\9041cdc6cea92e61997936b01a0bcc0c.jpg', '<p>三月，醉一场青春的流年。慢步在三月的春光里，走走停停，看花开嫣然，看春雨绵绵，感受春风拂面，春天，就是青春的流年。青春，是人生中最美的风景。青春，是一场花开的遇见；青春，是一场痛并快乐着的旅行；青春，是一场轰轰烈烈的比赛；青春，是一场鲜衣奴马的争荣岁月；青春，是一场风花雪月的光阴。</p>', 1, 0, 0, 1533640181, 63),
(9, '大学生科技竞赛获奖', '', '', '杨赫', '\\uploads/20180807\\acc55a6f9c5e9f52cafca5241c7f3650.jpg', '<p>青春往事，多么甜蜜；青春岁月，多么靓丽；青春流年，如火如荼。青春里，我们向着梦想前进。跌倒过，伤心过，快乐过，痛苦过，孤独过，彷徨过，迷茫过。总是，在悠悠的岁月中徘徊；总是，在如春的生命中成长；总是，在季节的交替中感悟人生四季的美妙与韵律；总是，在多愁善感中体悟青春的美好与无奈。</p>', 2, 0, 0, 1533640228, 63),
(10, '革命传统教育', '', '', '杨赫', '\\uploads/20180807\\8db23bf4677ad552ffa0f94e57a9bc3a.jpg', '<p>　三月的鲜花，一树树，一束束，一簇簇，而青春，就是像三月的鲜花一样美丽迷人，生机盎然，姹紫嫣红，生机勃勃。三月，是青春里最美最温暖的风景。三月的美，就像青春的美，充满活力，充满生机，充满昂扬的斗志。三月的美，就像青春的花季，在那里我们可以感受青春的跳动与感动，感受青春的曼妙与奇妙；感受青春的悸动与心跳。</p>', 0, 0, 0, 1533640255, 63),
(11, '环境透射电镜', '', '', '杨赫', '\\uploads/20180807\\01920edce5adeb4fc083c66bf4f73363.jpg', '<p>青春，如三月的春光，安暖向阳。在美丽的青春年华，我们手牵手，肩并肩，跨过岁月山河，跨过锦瑟流年，跨过天涯海角，在三月的春光里沐浴金色的光泽。三月的春光，让青春的我们看到希望，看到自己有一颗年轻跳动的心，看到蓝天白云，看到明媚的灿烂。三月的春光，温暖无比，就像我们的青春，有着长辈的呵护，有着老师的循循教导，它们就像春光，照耀着我们年轻的心。</p><p>&nbsp; &nbsp;</p><p><br/></p>', 0, 0, 0, 1533640286, 63),
(12, '教师科研团队', '', '', '杨赫', '\\uploads/20180807\\3673995cf24b28d03d64b0f0e4eb5df3.jpg', '<p>青春，如三月的春雨，我们在春雨中得到滋润。春雨，淅淅沥沥，纷纷扬扬，打在青春的雨季，打在我们心里，打在我们的生活里，打在我们的生命中，打在我们的灵魂深处。一场春雨，滋润着我们的青春流年，让我们快乐成长，让我们如沐春雨，让我们感受亲恩。三月的春雨，就像我们的父母，用他们的爱心，滋润着我们幼小不安的心灵。</p>', 0, 0, 0, 1533640312, 63),
(13, '拉曼光谱', '', '', '', '\\uploads/20180807\\bf4bb0a45b68f8f4684f104f4be63b04.jpg', '<p>&nbsp; &nbsp;　　青春，如三月的春风，我们沐浴在春风里。三月的春风，是我们的朋友，是我们的同窗，是陪伴我们成长的玩伴。因为有了春风，我们感受到友谊的温暖；因为有了春风，我们不再寂寞；因为有了春风，我们总在需要帮助的时候，有他们伸出援助之手。春风，是那样感情丰富，温婉细腻。在春风里，我们跳着，唱着，欢呼着，只因为这如春风的情谊。</p><p><br/></p>', 0, 0, 0, 1533640346, 63),
(14, '五四红旗团支部标兵', '', '', '杨赫', '\\uploads/20180807\\89debfd9d3aa492b88026ef2f00696d2.jpg', '<p>&nbsp; &nbsp;　　青春，如三月的春风，我们沐浴在春风里。三月的春风，是我们的朋友，是我们的同窗，是陪伴我们成长的玩伴。因为有了春风，我们感受到友谊的温暖；因为有了春风，我们不再寂寞；因为有了春风，我们总在需要帮助的时候，有他们伸出援助之手。春风，是那样感情丰富，温婉细腻。在春风里，我们跳着，唱着，欢呼着，只因为这如春风的情谊。</p><p><br/></p>', 0, 0, 0, 1533640411, 63),
(15, '学生创意作品', '', '', '杨赫', '\\uploads/20180807\\55f43d28c1072de28a7519d409697860.jpg', '<p>学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品学生创意作品</p>', 0, 0, 1, 1533640443, 63),
(16, '学生户外活动', '', '', '杨赫', '\\uploads/20180807\\f5d0cc3985e80ef501819b778e2cbb85.jpg', '<p>学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动学生户外活动</p>', 1, 0, 1, 1533640461, 63),
(17, '学生获奖证书', '', '', '杨赫', '\\uploads/20180807\\8c84e47fe0d64e008ed849b39245d55f.jpg', '<p>学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书学生获奖证书</p>', 2, 0, 1, 1533640491, 63),
(18, '学生实践1', '', '', '杨赫', '\\uploads/20180807\\73de2b1e5612795d5490d3e0518a0789.jpg', '<p>学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1学生实践1</p>', 3, 0, 1, 1533640512, 63),
(19, '学生实践2', '', '', '杨赫', '\\uploads/20180807\\d7eb8cf5e3683684e9f113a6ae3bb630.jpg', '<p>学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2学生实践2</p>', 5, 0, 1, 1533640536, 63),
(20, '学生实践3', '', '', '杨赫', '\\uploads/20180807\\f92537113f90678ff3592dbbaf1eff4f.jpg', '<p>学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3学生实践3</p>', 28, 0, 1, 1533640557, 63),
(23, '学生野外实践', '学生野外实践', '学生野外实践', '学生野外实践', '\\uploads/20180808\\a28994db70c41dc8ee842ca8537d60f0.jpg', '<p>学生野外实践学生野外实践学生野外实践学生野外实践学生野外实践学生野外实践学生野外实践学生野外实践</p>', 20, 0, 0, 1533689126, 63),
(24, '我院成功承办吉林省第十二届大学生程序设计大赛 ', '我院成功承办吉林省第十二届大学生程序设计大赛 ', '我院成功承办吉林省第十二届大学生程序设计大赛 ', '我院成功承办吉林省第十二届大学生程序设计大赛 ', NULL, '<p>我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;我院成功承办吉林省第十二届大学生程序设计大赛\r\n &nbsp; &nbsp; &nbsp;</p>', 76, 0, 0, 1533690238, 57),
(25, '学院举办2018届毕业生晚会', '学院举办2018届毕业生晚会', '学院举办2018届毕业生晚会', '学院举办2018届毕业生晚会', NULL, '<p>学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会</p>', 10, 0, 0, 1533690270, 57),
(26, '学院召开三场教师座谈会', '学院召开三场教师座谈会', '学院召开三场教师座谈会', '学院召开三场教师座谈会', NULL, '<p>学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会学院召开三场教师座谈会</p>', 31, 0, 0, 1533690295, 57),
(27, '北华大学2018年大学生心理健康活动月方案 ', '北华大学2018年大学生心理健康活动月方案 ', '北华大学2018年大学生心理健康活动月方案 ', '北华大学2018年大学生心理健康活动月方案 ', NULL, '<p>北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;</p>', 4, 0, 0, 1533690334, 57),
(28, '“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作 ', '“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作 ', '“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作 ', '“新时代e支部”', NULL, '<p>“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作“新时代e支部”开展党员积分制管理和党支部标准化规范化创星工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;</p>', 9, 0, 0, 1533690376, 57),
(29, '北华大学第八届教职工乒乓球赛圆满结束 ', '', '', '北华大学第八届教职工乒乓球赛\\华大\\', NULL, '<p>北华大学第八届教职工乒乓球赛圆满结束\r\n &nbsp; &nbsp; &nbsp;北华大学第八届教职工乒乓球赛圆满结束\r\n &nbsp; &nbsp; &nbsp;北华大学第八届教职工乒乓球赛圆满结束\r\n &nbsp; &nbsp; &nbsp;</p>', 24, 0, 0, 1533690662, 57),
(30, '学团干部的素质和工作艺术 ', '学团干部的素质和工作艺术 ', '学团干部的素质和工作艺术 ', '学团干部的素质和工作艺术 ', NULL, '<p>学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学团干部的素质和工作艺术\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691082, 59),
(31, '2017年学科建设效果 ', '2017年学科建设效果 ', '2017年学科建设效果 ', '2017年学科建设效果 ', NULL, '<p>2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果2017年学科建设效果</p>', 1, 0, 0, 1533691113, 59),
(32, '学院开展“筑梦•创新”团队网络评选活动 ', '学院开展“筑梦•创新”团队网络评选活动 ', '学院开展“筑梦•创新”团队网络评选活动 ', '学院开展“筑梦•创新”团队网络评选活动 ', NULL, '<p>学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;学院开展“筑梦•创新”团队网络评选活动\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691137, 59),
(33, '学院举办2018届毕业生晚会2', '学院举办2018届毕业生晚会', '学院举办2018届毕业生晚会', '学院举办2018届毕业生晚会', NULL, '<p>学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会学院举办2018届毕业生晚会</p>', 0, 0, 0, 1533691172, 59),
(34, '北华大学2018年大学生心理健康活动月方案 2', '北华大学2018年大学生心理健康活动月方案 ', '', '北华大学2018年', NULL, '<p>北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;北华大学2018年大学生心理健康活动月方案\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691224, 59),
(35, '学院召开工程教育认证推进会', '学院召开工程教育认证推进会', '学院召开工程教育认证推进会', '学院召开工程教育认证推进会', NULL, '<p>学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会学院召开工程教育认证推进会</p>', 4, 0, 0, 1533691241, 59),
(36, '2017年科研工作综述 ', '2017年科研工作综述 ', '2017年科研工作综述 ', '2017年科研工作综述 ', NULL, '<p>2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2017年科研工作综述2017年科研工作综述2017年科研工作综述\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691589, 60),
(37, '教学改革的总体思路及政策措施 ', '教学改革的总体思路及政策措施 ', '教学改革的总体思路及政策措施 ', '教学改革的总体思路及政策措施 ', NULL, '<p>教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691628, 60);
INSERT INTO `article` (`id`, `title`, `keywords`, `desc`, `author`, `thumb`, `content`, `click`, `zan`, `rec`, `time`, `cateid`) VALUES
(38, '教学改革的总体思路及政策措施 22', '教学改革的总体思路及政策措施 ', '教学改革的总体思路及政策措施 ', '教学改革的总', NULL, '<p>教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;教学改革的总体思路及政策措施教学改革的总体思路及政策措施教学改革的总体思路及政策措施\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691741, 60),
(39, ' 计算机科学技术学院2018年招生计划 ', ' 计算机科学技术学院2018年招生计划 ', '计算机科学技术学院2018年招生计划 ', ' 计算机科学技术学', NULL, '<table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">计算机科学技术学院2018年招生计划&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">计算机科学技术学院2018年招生计划计算机科学技术学院2018年招生计划&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">计算机科学技术学院2018年招生计划计算机科学技术学院2018年招生计划&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">计算机科学技术学院2018年招生计划计算机科学技术学院2018年招生计划计算机科学技术学院2018年招生计划计算机科学技术学院2018年招生计划&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">计算机科学技术学院2018年招生计划计算机科学技术学院2018年招生计划&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">计算机科学技术学院2018年招生计划&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><p><br/></p>', 0, 0, 0, 1533691783, 60),
(40, '多措并举平稳推进我院2018年学生就业工作 ', '多措并举平稳推进我院2018年学生就业工作 ', '多措并举平稳推进我院2018年学生就业工作 ', '多措并举平', NULL, '<p>多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;多措并举平稳推进我院2018年学生就业工作\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691812, 60),
(41, '2015年大学生就业工作总结 ', '2015年大学生就业工作总结 ', '2015年大学生就业工作总结 ', '2015年大学生就业工作总结 ', NULL, '<p>2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;2015年大学生就业工作总结\r\n &nbsp; &nbsp; &nbsp;</p>', 2, 0, 0, 1533691861, 60),
(42, '计算机学院阶段性总结和继续推进2017年大学生就业工作 ', '计算机学院阶段性总结和继续推进2017年大学生就业工作 ', '计算机学院阶段性总结和继续推进2017年大学生就业工作 ', '计算机学院', NULL, '<p>计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;计算机学院阶段性总结和继续推进2017年大学生就业工作\r\n &nbsp; &nbsp; &nbsp;</p>', 0, 0, 0, 1533691903, 61),
(43, ' 一个专业在吉林省高校综合评价排名第五 ', ' 一个专业在吉林省高校综合评价排名第五 ', '一个专业在吉林省高校综合评价排名第五 ', ' 一个专业在吉林省高校综合评价排名第五 ', NULL, '<table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">一个专业在吉林省高校综合评价排名第五&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">一个专业在吉林省高校综合评价排名第五&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><table width="730" cellspacing="0" cellpadding="0"><tbody><tr class="firstRow"><td width="730" height="30"><br/></td></tr><tr><td height="23"><form name="form124244a">一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五一个专业在吉林省高校综合评价排名第五&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;</form></td></tr></tbody></table><p><br/></p>', 1, 0, 0, 1533691937, 61),
(44, '计算机学院重视大学生就业工作', '计算机学院重视大学生就业工作', '计算机学院重视大学生就业工作', '计算机学院重视大学生就业工作', NULL, '<p><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-size:+1px;font-family:宋体, 微软雅黑">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span><span style="font-family: 宋体, 微软雅黑; font-size: large;">计算机学院重视大学生就业工作</span></p>', 0, 0, 0, 1533691975, 61),
(45, '我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩 ', '我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩 ', '我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩 ', '我院学生在2018年中国大学生计算机', NULL, '<p>我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩我院学生在2018年中国大学生计算机设计大赛吉林省级赛中再获得佳绩</p>', 0, 0, 0, 1533692004, 61),
(46, '2017年大学生参加省部级以上科技竞赛成绩斐然 ', '2017年大学生参加省部级以上科技竞赛成绩斐然 ', '2017年大学生参加省部级以上科技竞赛成绩斐然 ', '2017年大学生参加', NULL, '<p>2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然2017年大学生参加省部级以上科技竞赛成绩斐然</p>', 0, 0, 0, 1533692045, 61),
(47, '2016年实践教学工作 ', '2016年实践教学工作 ', '2016年实践教学工作 ', '2016年实践教学工作 ', NULL, '<p>2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;2016年实践教学工作2016年实践教学工作\r\n &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp;</p>', 1, 0, 0, 1533692065, 61),
(48, '关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知', '关于举行北华', '关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知', '关于举行北华大学2', NULL, '<p><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size: xx-large;">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span><span style="font-size:32px">关于举行北华大学2014届毕业生毕业典礼暨学位授予仪式的通知</span></p>', 0, 0, 0, 1533692170, 62),
(49, '2014年暑假放假安排的通知', '2014年暑假放假安排的通知', '2014年暑假放假安排的通知', '2014年暑假放假安排的通知', NULL, '<p><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size:32px">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span><span style="font-size: xx-large;">2014年暑假放假安排的通知</span></p>', 0, 0, 0, 1533692208, 62),
(50, '关于召开2014年教育硕士培养工作培训与交流研讨会议的通知', '关于召开2014年教育', '关于召开2014年教育硕士培养工作', '关于召开2014年教育硕士培养工', NULL, '<p><span style="font-size:32px">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size:32px">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size:32px">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size: xx-large;">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size: xx-large;">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size:32px">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size: xx-large;">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size:32px">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size: xx-large;">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size:32px">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span><span style="font-size: xx-large;">关于召开2014年教育硕士培养工作培训与交流研讨会议的通知</span></p>', 0, 0, 0, 1533692241, 62),
(51, '中西部高等教育振兴计划', '中西部高等教育振兴计划：已有14所高校获56亿支持', '中西部高等教育振兴计划：已有14所高校获56亿支持', '中西部高等教育振兴计划', '\\uploads/20180814\\d66e1f57f57957df436ea9b5c4e5d71e.jpg', '<p>了；了；<br/></p>', 10, 0, 0, 1533692287, 62),
(54, '西部大开', '西部大开', '西部大开', '西部大开', '\\uploads/20180814\\3f624c9f14215162cf45410a5765b51f.jpg', '<table><tbody><tr class="firstRow"><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td></tr><tr><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td></tr><tr><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td></tr><tr><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td><td width="66" valign="top"><br/></td></tr></tbody></table><p><br/></p>', 30, 0, 1, 1534207250, 62);

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` char(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `auth_group`
--

INSERT INTO `auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理员', 1, '15,16,17,18,19,1,11,12,13,14,9,2,3,10,20,4'),
(3, '链接专员', 1, '2,3,10,20,4'),
(4, '配置管理员', 1, '1,9,11,14,13,12'),
(6, '内容管理员', 1, '21,22,23,24,25,26,27,30,28,29'),
(7, '文章管理员', 1, '26,27,30,28,29');

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_access`
--

CREATE TABLE IF NOT EXISTS `auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group_access`
--

INSERT INTO `auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(28, 3),
(29, 4),
(44, 4),
(45, 4),
(46, 6),
(47, 7);

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  `pid` mediumint(9) NOT NULL DEFAULT '0',
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `auth_rule`
--

INSERT INTO `auth_rule` (`id`, `name`, `title`, `type`, `status`, `condition`, `pid`, `level`, `sort`) VALUES
(1, 'sys', '系统设置', 1, 1, '', 0, 0, 7),
(2, 'link', '友情链接', 1, 1, '', 0, 0, 4),
(3, 'link/lst', '链接列表', 1, 1, '', 2, 1, 5),
(4, 'link/del', '删除链接', 1, 1, '', 3, 2, 6),
(11, 'conf/lst', '配置列表', 1, 1, '', 1, 1, 50),
(10, 'link/add', '添加链接', 1, 1, '', 3, 2, 50),
(9, 'conf/conf', '配置项', 1, 1, '', 1, 1, 50),
(12, 'conf/add', '添加配置', 1, 1, '', 11, 2, 50),
(13, 'conf/del', '配置删除', 1, 1, '', 11, 2, 50),
(14, 'conf/edit', '配置编辑', 1, 1, '', 11, 2, 50),
(15, 'admin', '管理员', 1, 1, '', 0, 0, 50),
(16, 'admin/lst', '管理员列表', 1, 1, '', 15, 1, 50),
(17, 'admin/add', '管理员添加', 1, 1, '', 16, 2, 50),
(18, 'admin/del', '管理员删除', 1, 1, '', 16, 2, 50),
(19, 'admin/edit', '管理员修改', 1, 1, '', 16, 2, 50),
(20, 'link/edit', '修改链接', 1, 1, '', 3, 2, 50),
(21, 'cate', '栏目管理', 1, 1, '', 0, 0, 50),
(22, 'cate/lst', '栏目列表', 1, 1, '', 21, 1, 50),
(23, 'cate/add', '栏目增加', 1, 1, '', 22, 2, 3),
(24, 'cate/edit', '栏目修改', 1, 1, '', 22, 2, 2),
(25, 'cate/del', '栏目删除', 1, 1, '', 22, 2, 1),
(26, 'article', '文章管理', 1, 1, '', 0, 0, 50),
(27, 'article/lst', '文章列表', 1, 1, '', 26, 1, 50),
(28, 'article/add', '文章添加', 1, 1, '', 27, 2, 50),
(29, 'article/del', '文章删除', 1, 1, '', 27, 2, 50),
(30, 'article/edit', '文章修改', 1, 1, '', 27, 2, 50);

-- --------------------------------------------------------

--
-- 表的结构 `cate`
--

CREATE TABLE IF NOT EXISTS `cate` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `catename` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '栏目名称',
  `type` tinyint(1) NOT NULL COMMENT '栏目类型',
  `pid` mediumint(9) NOT NULL COMMENT '上级栏目id',
  `sort` mediumint(9) NOT NULL DEFAULT '50' COMMENT '排序',
  `keywords` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '栏目关键词',
  `desc` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '栏目描述',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '栏目内容',
  `rec_index` tinyint(4) NOT NULL COMMENT '推荐',
  `rec_bottom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- 转存表中的数据 `cate`
--

INSERT INTO `cate` (`id`, `catename`, `type`, `pid`, `sort`, `keywords`, `desc`, `content`, `rec_index`, `rec_bottom`) VALUES
(10, '学校概况', 1, 0, 50, '', '', '', 0, 0),
(12, '学校简介', 1, 10, 3, '', '', '', 0, 0),
(16, '学校领导', 1, 10, 2, '老师，组长，主任，院长，', '领导班子', '', 0, 0),
(17, '机构设置', 1, 10, 1, '机构', '各种实验室机构等等', '', 0, 0),
(18, '党建园地', 1, 0, 50, '党', '共产党', '', 0, 0),
(19, '组织机构', 1, 18, 50, '', '', '', 0, 0),
(20, '党建要问', 1, 18, 50, '', '', '', 0, 0),
(21, '党校工作', 1, 18, 50, '', '', '', 0, 0),
(22, '创先争优', 1, 18, 50, '', '', '', 0, 0),
(23, '学习园地', 1, 18, 50, '', '', '', 0, 0),
(24, '工会动态', 1, 18, 50, '', '', '', 0, 0),
(25, '师资队伍', 1, 0, 50, '', '', '', 0, 0),
(26, '木材科学与工程专业', 1, 25, 50, '', '', '', 0, 0),
(27, '材料化学专业', 1, 25, 50, '', '', '', 0, 0),
(28, '包装工程专业', 1, 25, 50, '', '', '', 0, 0),
(29, '材料物理专业', 1, 25, 50, '', '', '', 0, 0),
(30, '新能源材料与器件专业', 1, 25, 50, '', '', '', 0, 0),
(31, '应用化学专业', 1, 25, 50, '', '', '', 0, 0),
(32, '分析测试中心', 1, 25, 50, '', '', '', 0, 0),
(33, '科研平台', 1, 0, 50, '', '', '', 0, 0),
(34, ' 科研平台 ', 1, 33, 50, '', '', '', 0, 0),
(35, '学术动态', 1, 33, 50, '', '', '', 0, 0),
(36, '科研成果', 1, 33, 50, '', '', '', 0, 0),
(37, '学科建设', 1, 0, 50, '', '', '', 0, 0),
(38, '专业介绍', 1, 37, 50, '', '', '', 0, 0),
(39, '硕士学位点', 1, 37, 50, '', '', '', 0, 0),
(40, '重点学科', 1, 37, 50, '', '', '', 0, 0),
(41, '教学工作', 1, 0, 50, '', '', '', 0, 0),
(42, '本科生教育', 1, 41, 50, '', '', '', 0, 0),
(43, '研究生教育', 1, 41, 50, '', '', '', 0, 0),
(44, '学团工作', 1, 0, 50, '', '', '', 0, 0),
(45, '学团组织', 1, 44, 50, '', '', '', 0, 0),
(46, '学生管理', 1, 44, 50, '', '', '', 0, 0),
(47, '学子风采', 1, 44, 50, '', '', '', 0, 0),
(48, '奖励荣誉', 1, 44, 50, '', '', '', 0, 0),
(49, '招生就业', 1, 0, 50, '', '', '', 0, 0),
(50, '招生计划', 1, 49, 50, '', '', '', 0, 0),
(51, '就业动态', 1, 49, 50, '', '', '', 0, 0),
(52, '招聘信息', 1, 49, 50, '', '', '', 0, 0),
(53, '校友园地', 1, 0, 50, '', '', '', 0, 0),
(54, '毕业生名录', 1, 53, 50, '', '', '', 0, 0),
(55, '校友风采录', 1, 53, 50, '', '', '', 0, 0),
(57, '通知公告', 2, 0, 50, '', '', '', 1, 0),
(59, '学院新闻', 2, 0, 50, '', '', '', 0, 0),
(60, '党建思政', 2, 0, 50, '', '', '', 0, 0),
(61, '科技创新', 2, 0, 50, '', '', '', 0, 0),
(62, '学园天地', 2, 0, 50, '', '', '', 0, 0),
(63, '图文热点', 3, 0, 50, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `conf`
--

CREATE TABLE IF NOT EXISTS `conf` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT COMMENT '配置项id',
  `cnname` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '配置项中文名称',
  `enname` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '英文名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '配置类型',
  `value` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '配置值',
  `values` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '配置可选值',
  `sort` smallint(6) NOT NULL DEFAULT '50' COMMENT '配置项排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='配置' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `conf`
--

INSERT INTO `conf` (`id`, `cnname`, `enname`, `type`, `value`, `values`, `sort`) VALUES
(1, '启动验证码', 'code', 4, '', '是', 50),
(2, '站点名称', 'sitename', 1, '北华大学材料与工程学院', '', 54),
(3, '站点关键词', 'keywords', 1, '材料与工程学院', '', 53),
(4, '站点描述', 'desc', 2, '                                                                         北华大学材料与工程学院  的官网                                                                                                                                                                      ', '', 52),
(5, '是否关闭网站', 'close', 3, '否', '是,否', 51),
(6, '自动清空缓存', 'cache', 5, '1个小时', '1个小时,2个小时,3个小时', 49);

-- --------------------------------------------------------

--
-- 表的结构 `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `title` varchar(60) CHARACTER SET utf8 NOT NULL COMMENT '链接标题',
  `desc` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '链接描述',
  `url` varchar(160) CHARACTER SET utf8 NOT NULL COMMENT '链接地址',
  `sort` mediumint(11) NOT NULL DEFAULT '50' COMMENT '链接排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `link`
--

INSERT INTO `link` (`id`, `title`, `desc`, `url`, `sort`) VALUES
(6, '北华大学', '北华大学', 'http://www.beihua.edu.cn/', 50),
(7, '北华大学图书馆', '图书馆', 'http://lib.beihua.edu.cn/', 50),
(8, '吉林大学材料科学与工程学院 ', '学院', 'http://dmse.jlu.edu.cn/', 50),
(9, '哈尔滨工业大学材料科学与工程学院', '学院', 'http://mse.hit.edu.cn/', 50),
(10, '东北大学材料与冶金学院', '学院', 'http://www.som.neu.edu.cn/', 50);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
