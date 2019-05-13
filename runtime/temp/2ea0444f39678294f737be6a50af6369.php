<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:74:"D:\phpstudy\WWW\material\public/../application/index\view\artlist\lst.html";i:1534226274;s:63:"D:\phpstudy\WWW\material\application\index\view\public\top.html";i:1534600615;s:64:"D:\phpstudy\WWW\material\application\index\view\public\left.html";i:1534039284;s:66:"D:\phpstudy\WWW\material\application\index\view\public\footer.html";i:1534119396;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title>材料科学与工程学院通知公告</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/static/index/css/notice.css">
	<script type="text/javascript" src="/static/index/js/js.js"></script>
	<link rel="stylesheet" href="/static/index/css/style.css">
	<link rel="stylesheet" type="text/css" href="/static/index/css/this.css">
	<script src="/static/index/js/jquery.js"></script>
<script src="/static/index/js/lanren.js"></script>
	<style type="text/css">
	.notice>ul>li>a{
	color: black;
	font-size: 19px;
	text-decoration: none;
	}
	#foot{
	width: 1606px;
	height: 150px;
	padding-top: 15px;
	float: left;
	position: absolute;
	background-color: #defdf8;
	}
	#all{
		background-image: url();
	}
	 ul.pagination li{
        float: left;
        list-style: none;
        margin-left: 2px;
        padding: 5px;
        color: black;
		border: 1px solid #ccc;
		background: #A8E4E4;
    }
      div.pagelist{
        width: 400px;
        margin: 0 auto;
        text-align: center;
    }
	</style>
</head>

<body>
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

		<div id="center-all">
		<div class="center">
			<div class="notice">
				<div class="TZGG"><span class="tzgg"><?php echo $artla['catename']; ?></span></div>

				<ul>
					<?php if(is_array($artll) || $artll instanceof \think\Collection || $artll instanceof \think\Paginator): $i = 0; $__LIST__ = $artll;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>
					<li><a  href="<?php echo url('/artlist',array('cateid'=>$article['id'])); ?>" class="jingsai"><center><?php echo $article['catename']; ?></center></a>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
				
<div class="TZGG"><span class="tzgg"><?php echo $getyu['0']['catename']; ?></span></div>
				<ul>
					<?php if(is_array($getleft) || $getleft instanceof \think\Collection || $getleft instanceof \think\Paginator): $i = 0; $__LIST__ = $getleft;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$left): $mod = ($i % 2 );++$i;?>
					<li><a href="#"><a href="<?php echo url('/article',array('cateid'=>$left['cateid'],'artid'=>$left['id'])); ?>">
					<?php
						echo mb_substr($left['title'],0,10,"utf-8");

					?>
					</a></a><center<span class="data"><?php echo date("m-d",$left['time']); ?></span></li>
					
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
 			</div>
 			<div class="center-top">
 				<span>当前位置：
					<?php if(is_array($artlaio) || $artlaio instanceof \think\Collection || $artlaio instanceof \think\Paginator): $i = 0; $__LIST__ = $artlaio;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$artlaio): $mod = ($i % 2 );++$i;?>
 					<a style="text-decoration: none;" href="<?php echo url('/artlist',array('cateid'=>$artlaio['id'])); ?>"><?php echo $artlaio['catename']; ?> </a> <span style="font-size: 15px"> >></span>
					<?php endforeach; endif; else: echo "" ;endif; ?>
 					 <span style="font-size: 15px"></span></span>
					
 			</div>
 			<div class="center-wenzi">
 				<h2 ><center><?php echo $artla['catename']; ?></center></h2>
 				<?php if(is_array($artRes) || $artRes instanceof \think\Collection || $artRes instanceof \think\Paginator): $i = 0; $__LIST__ = $artRes;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$articles): $mod = ($i % 2 );++$i;?>
	 			<li><a style="text-decoration: none;color:#0A1FED" href="<?php echo url('/article',array('cateid'=>$articles['cateid'],'artid'=>$articles['id'])); ?>"><?php echo $articles['title']; ?></a>
					<?php if(($artla['type']!=1)): ?>
	 				<span class="data"><?php echo date("Y年m月d日",$articles['time']); ?></span>
					<?php endif; ?>
	 			</li>
	 				<?php endforeach; endif; else: echo "" ;endif; ?>
	 				<div class="pagelist" style="color:#0A1FED" ><?php echo $artRes->render(); ?></div>
	 			</div>
		</div>
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
	</div>
</body>
</html>