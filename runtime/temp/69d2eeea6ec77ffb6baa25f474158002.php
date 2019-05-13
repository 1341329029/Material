<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:74:"D:\phpstudy\WWW\material\public/../application/index\view\index\index.html";i:1534124796;s:63:"D:\phpstudy\WWW\material\application\index\view\public\top.html";i:1534600615;s:66:"D:\phpstudy\WWW\material\application\index\view\public\footer.html";i:1534119396;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title>材料科学与工程学院</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/static/index/css/this.css">
	<script type="text/javascript" src="/static/index/js/js.js"></script>
	<link rel="stylesheet" href="/static/index/css/style.css">
	<script src="/static/index/js/jquery.js"></script>
	<script src="/static/index/js/lanren.js"></script>
<style type="text/css">
    *{
        margin: 0; 
        padding: 0;
    }
    #wrap{
      width: 1300px;
    height: 304px;
    position: relative;
    margin: 30px auto;
    overflow: hidden;
    /*background: red;*/
    }
    #list_hot{
      position: absolute;
        left: 0;
        top: 0;
        margin: 0;
        padding: 0;
        -webkit-animation: 15s move infinite linear;
        -ms-animation: 15s move infinite linear;
        -moz-animation: 15s move infinite linear;
        -o-animation: 15s move infinite linear;
        -webkit-animation: 15s move infinite linear;
        width: 4050px;
    }
    #list_hot li {
       list-style: none;
    width: 369px;
    height: 273px;
    border: 4px solid #fff;
    background: #ace4e6;
    color: #fff;
    font: 50px/98px Arial;
    text-align: center;
    float: left;
    margin-left: 30px;
    padding-left: 15px;
    padding-bottom: 21px;
    padding-right: 14px;
    }
    @-webkit-keyframes move{
        0% {
              left: 0;
        }
        100% {
              left: -2180px;
        }
    }
    @keyframes move {
        0% {
           left: 0;
        }
        100% {
           left: -2180px;
        }
    }
    #wrap:hover #list_hot {
        -webkit-animation-play-state: paused; /*动画暂停播放*/
        -ms-animation-play-state: paused; /*兼容IE浏览器*/
        -moz-animation-play-state: paused; /* 兼容firefox*/
        -o-animation-play-state: paused; /* 兼容opera*/
        -webkit-animation-play-state: paused; /*兼容chrome 和 safari*/
    }
    .list_img{
        display: block;
        width:364px;
        height: 273px;
        background-color:#9ed7de;
        margin-top: 10px;
    }
</style>
</head>
<body>
    <div id="all-page">
	<div id="all">
					<style type="text/css">
			@font-face{
	font-family:"行楷";
 	src: url('/static/index/font/锐字工房云字库行楷GBK.ttf'); 
	}
    .school{
    	font-family: "行楷";
    }
		</style>
		<div id="HEAD" >

		
		

		<div id="head">
				<div class="head-class head-1">
					<img src="/static/index/images/logo.png" class="logo-png">
				</div>
				<div class="head-class head-2">
					<img src="/static/index/images/bhdx.png" style="width: 332px;height: 89px;">
					<span class="head-2-wenzi English" style="color: #fffeff;">Beihua University</span>
				</div>
				<div class="head-class head-3">
					<span class="head-3-wenzi school" style="color: black">材料科学与工程学院</span>
					<span class="head-3-wz English " style="color: black">College of Material Science and Engineering</span>
				</div>
		</div>
		<div id="menu">
			<div class="nav">
				<ul style="margin-left:40px;">
					<li><a href="<?php echo url('/'); ?>"style="font-size: 17px">学院首页</a></li>
					<?php if(is_array($cateres) || $cateres instanceof \think\Collection || $cateres instanceof \think\Paginator): $i = 0; $__LIST__ = $cateres;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cate): $mod = ($i % 2 );++$i;?>
					<li class="nav_down"><a href="<?php echo url('/artlist',array('cateid'=>$cate['id'])); ?>"style="font-size: 17px"><?php echo $cate['catename']; ?></a>
						
						<ul class="nav_down_list">
							<?php if($cate['children'] != 0): foreach ($cate['children'] as $k2 => $v2):?>
							<li><a href="<?php echo url('/artlist',array('cateid'=>$v2['id'])); ?>""><?php echo $v2['catename'];?></a></li>
							<?php endforeach;endif; ?>
						</ul>
					</li>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
			</div>
		</div>
				</div>
		<div id="lb">
			<div id="container">
		        <div id="list" style="left: -500px;">
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['5']['thumb']; ?>" alt="1"/>
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['0']['thumb']; ?>" alt="1"/>
		        <img  style="width:500px;height:375px;" src="<?php echo $gethot['1']['thumb']; ?>" alt="2"/>
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['2']['thumb']; ?>" alt="3"/>
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['3']['thumb']; ?>" alt="4"/>
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['4']['thumb']; ?>" alt="5"/>
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['5']['thumb']; ?>" alt="6"/>
		        <img style="width:500px;height:375px;" src="<?php echo $gethot['0']['thumb']; ?>" alt="6"/>
		        
		    	</div>
                <div id="buttons">
                <span index="1" class="on"></span>
                <span index="2"></span>
                <span index="3"></span>
                <span index="4"></span>
                <span index="5"></span>
                <span index="6"></span>
    		</div>
            <a id="prev" class="arrow"><</a>
            <a id="next" class="arrow">></a>
			</div>
			<?php $i=0;if(is_array($getaonly) || $getaonly instanceof \think\Collection || $getaonly instanceof \think\Paginator): $i = 0; $__LIST__ = $getaonly;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$only): $mod = ($i % 2 );++$i;?>
			<div class="daohang tzgg"
			<?php $i++;
			if($i == 6): ?>
			 style="width: 500px;margin-left: 150px;position: absolute;margin-top: 403px;background-image:url('/static/index/images/党建思政.png');background-position-x: 5px;
                background-size: 536px 275px;
                background-position-y: -107px;
                "
			 <?php endif; ?>>
				<span class="tzgg-1"><a href="<?php echo url('/artlist',array('cateid'=>$only['id'])); ?>" class="a"><?php echo $only['catename']; ?></a><a href="<?php echo url('/artlist',array('cateid'=>$only['id'])); ?>" class="more" >more</a></span>
				<ul style="list-style-type: disc">
					<?php foreach ($only['data'] as $k2 => $v2):?>
					<li style="font-size: 15px;"><a href="<?php echo url('/article',array('cateid'=>$v2['cateid'],'artid'=>$v2['id'])); ?>">
					<?php
						echo mb_substr($v2['title'],0,15,"utf-8");

					?>
						
					</a><a class="data" style="font-size: 12px;"><?php echo date("m月d日",$v2['time']); ?> </a></li>
					
					<?php endforeach;?>
				</ul>
				
			</div>
			<?php endforeach; endif; else: echo "" ;endif; ?>
			
		</div>
		<?php if(is_array($getfouth) || $getfouth instanceof \think\Collection || $getfouth instanceof \think\Paginator): $i = 0; $__LIST__ = $getfouth;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>
		<div id="imgs">
			<span class="imgs-span"><a  style="text-decoration: none;color: black;font-weight: bold;font-family: 楷体;" href="<?php echo url('/artlist',array('cateid'=>$article['id'])); ?>"><?php echo $article['catename']; ?></a></span><span><a href="<?php echo url('/artlist',array('cateid'=>$article['id'])); ?>" class="m">more</a></span>
		 <div id="BG">
            <div id="wrap">
            <ul id="list_hot">
                <?php foreach ($article['data'] as $k2 => $v2):?>
                <li><a href="<?php echo url('/article',array('cateid'=>$v2['cateid'],'artid'=>$v2['id'])); ?>" class="list_img"><img src="<?php echo $v2['thumb']?>" style="width: 364px; height: 273px; "></a></li>
             <?php endforeach;?>
            </ul>
        </div>


			
<!-- 代码部分end -->
			</div>
		</div>
		<?php endforeach; endif; else: echo "" ;endif; ?>


	  <div id="foot">
	  		<div id="foot-center">
	  		<div id="foot-l">
	  				<span class="span-1"><a href="http://atc.beihua.edu.cn/">北华大学分析测试中心</a></span>
	  				<div class="foot-img" style="margin-left: 50px;"><span>北华大学微信平台</span><img src="/static/index/images/北华大学微信平台.png" class="chat-img"></div>
	  				<div class="foot-img"><span>北华大学就业微信平台</span><img src="/static/index/images/北华大学就业微信平台.png" class="chat-img chat-r" ></div>

	  		</div>
	  				<div id="foot-r">
	  				<ul style="list-style-type: none;">
	  				<li>
	  				友情链接:
	  				<?php if(is_array($getlink) || $getlink instanceof \think\Collection || $getlink instanceof \think\Paginator): $i = 0; $__LIST__ = $getlink;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$link): $mod = ($i % 2 );++$i;?>
	  				<a style="text-decoration: none;color:red" href="<?php echo $link['url']; ?>"><span><?php echo $link['title']; ?></span></a>
	  				
	  				<?php endforeach; endif; else: echo "" ;endif; ?>
	  				</li>
	  				<li>联系我们：&nbsp咨询电话：0432-64608369  &nbsp &nbsp  邮编：132013</li>
	  				<li>地址：吉林市滨江东路3999号</li>
	  				<li>技术支持：北华大学科学技术学院创新实践基地经纬工作室</li>
	  				<li>版权所有：comptuer college of beihua univesity all copyrights reserved 2018</li>
	  				<li>未经同意，不得转载任何信息&nbsp 违者必究</li>
	  				</ul>

	  				</div>
	  		</div>
	  </div>		
	</div>
	<script>
$(function(){
    var lanren = {
        left: {
            top: '0',
            left: '-100%'
        },
        right: {
            top: '0',
            left: '100%'
        },
        bottom: {
            top: '100%',
            left: '0'
        },
        top: {
            top: '-100%',
            left: '0'
        }
    };
    $('.lanren .box').each(function () {
        new MouseDirection(this, {
            enter: function ($element, dir) {
                //每次进入前先把.trans类移除掉，以免后面调整位置的时候也产生过渡效果
                var $content = $element.find('.content').removeClass('trans');
                //调整位置
                $content.css(lanren[dir]);
                //reflow
                $content[0].offsetWidth;
                //启用过渡
                $content.addClass('trans');
                //滑入
                $content.css({left: '0', top: '0'});
            },
            leave: function ($element, dir) {
                $element.find('.content').css(lanren[dir]);
            }
        });
    });
});
</script>
</div>
</body>
</html>