<?php
namespace app\index\controller;
use think\Db;
use app\index\model\Index as Art;//模版进行别名处理
class Index extends Common
{
    public function index()
    {
    	$article=new Art();
        //获取图片栏目
        $getfouth=$article->getFouth();
        $this->assign('getfouth',$getfouth);
        //获取单页栏目
        $getaonly=$article->getAonly();
		$this->assign('getaonly',$getaonly);
        //获取文章推荐和点击率高的文章进行轮播图展示
        $gethot=$article->gethot();
        $this->assign('gethot',$gethot);
        
    	return view();
    }
}
