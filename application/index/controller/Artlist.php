<?php
namespace app\index\controller;
use app\index\model\Article;
use think\Db;
class Artlist extends Common
{
    public function index()
    {
    	$article=new Article();
        $cateid=input('cateid');
        //所有栏目下文章获取
        $artRes=$article->getAllArticles($cateid);
         //栏目查找
        $artla=Db::name('cate')->where('id',$cateid)->find();
        //栏目子栏目查找
        $artll=Db::name('cate')->where('pid',$cateid)->order('sort','desc')->paginate(10);
        //当前位置循环查找
         	$sum=array($artla['id']);
    	while(1){
    		$artlain=Db::name('cate')->where('id',$cateid)->find();
    		array_push($sum, $artlain['pid']);
    		$cateid=$artlain['pid'];
    		if ($artlain['pid']==0) {
    			break;
    		}
    	}
    	$sum= implode(",", $sum);
    	$artlaio=Db::name('cate')->where("id IN($sum)")->paginate(10);

    	$this->assign('artlaio',$artlaio);
        $this->assign('artRes',$artRes);
        $this->assign('artla',$artla);
        $this->assign('artll',$artll);
    	return view('lst');
    }
}
