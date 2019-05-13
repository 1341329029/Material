<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:74:"D:\phpstudy\WWW\material\public/../application/index\view\article\lst.html";i:1534229354;s:63:"D:\phpstudy\WWW\material\application\index\view\public\top.html";i:1534600615;s:64:"D:\phpstudy\WWW\material\application\index\view\public\left.html";i:1534039284;s:66:"D:\phpstudy\WWW\material\application\index\view\public\footer.html";i:1534119396;}*/ ?>
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
	.single_info{
		float:right;
	}
	.div-content{
		margin-top:50px;
	}
	.img{
		margin-top: 100px;
	}
	#foot{
	width: 1606px;
	height: 150px;
	padding-top: 15px;
	float: left;
	background-color: rgba(147,247,231,0.3);
	border-top: 3px solid white;
	}
	.center {
    width: 1600px;
    height: auto;
	}
	table{
  border: 1px solid black;
  border-collapse:collapse;
  border-spacing:0;
  margin:0;
 }
  td{
  	border: 1px solid black;
  }
	.center-wenzi{
		height: auto;
	}
	.ll{
		color:#841a8b;
	}
	.post-nav >a{
		text-decoration: none;
	}
	.post-nav >a:hover{
		color:red;
		text-decoration: underline;
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
					<li><a href="http://127.0.0.1/material/public/index.php/index//artlist/cateid/<?php echo $article['id']; ?>" class="jingsai"><center><?php echo $article['catename']; ?></center></a>
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
 				<span>当前位置：<a style="text-decoration: none;" href="<?php echo url('/artlist',array('cateid'=>$artla['id'])); ?>"><?php echo $artla['catename']; ?></a>  <span style="font-size: 15px"> >></span></span>
 			</div>
 			<div class="center-wenzi">
 			<div id="content">
                <div class="post" id="post-19563" style="border-right: solid 1px #000000;
                    margin-top: 10px;">
                    <div class="single_entry single2_entry">
                        <div class="entry fewcomment">
                            <div class="title_container">


                                <h1 class="title single_title">
                                    <center><span><?php echo $articles['title']; ?></span><span class="title_date"></span></center></h1>
                              
                               
                                <p class="single_info" style="font-weight:100;float:right;">
								<?php if(($artla['type']!=1)): ?>
                                时间：<?php echo date("Y-m-d",$articles['time']); ?>&nbsp;&nbsp;&nbsp;
								<?php endif; ?>
                            	编辑：<?php echo $articles['author']; ?></p><br>
                                <?php if(($articles['keywords'])): ?>
                                <p style="font-weight:100;width: 476px;float: left;">关键词：<?php echo $articles['keywords']; ?></p>
                                <?php endif; ?>
                                 <p><h5 style="font-weight:100;float:right;">访问次数:<?php echo $articles['click']; ?>次</h5></p><br><br>
                                 <?php if(($articles['desc'])): ?>
                                  <p style="font-weight:100;">描述：<?php echo $articles['desc']; ?></p>
                                   <?php endif; ?>


                            </div>
                            <?php if(($articles['thumb'])): ?>
                            <div class="img">
                            	<center>
                            		
                            		<img style="width:763px;height: 500px; " src="<?php echo $articles['thumb']; ?>">
                            	</center>
                            </div>
                            <?php endif; ?>
                            <div class="div-content">
                               
                               <center><?php echo $articles['content']; ?></center>
                                
                                <center id="pagenav" style="padding-top: 35px;">
								    <div class="post-nav">
										<?php if($prev == ''): ?>
										<a class="l   ll " href="#" style="padding-left: 35px;
										float:left;">上一篇没有了</a>
										<?php else: ?>
										<a class="l" href="<?php echo url('/article',array('cateid'=>$articles['cateid'],'artid'=>$prev)); ?>" style="float:left;padding-left: 25px;"> »上一篇</a>
										<?php endif; if($next == ''): ?>
										<a class="r" href="#" style="float:right;padding-right:35px;">下一篇没有了</a>
										<?php else: ?>
										<a class="r" href="<?php echo url('/article',array('cateid'=>$articles['cateid'],'artid'=>$next)); ?>" style="float:right;padding-right:25px;">下一篇 »</a>
										<?php endif; ?>
									</div>
                                    </center>
                                
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
	 			</div>
	 			
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

</body>
</html>