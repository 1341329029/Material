<?php
namespace app\index\controller;
use think\Db;
class Article extends Common
{
    public function index()
    {
    	$artid=input('artid');//获取文章id
    	$cateid=input('cateid');//获取栏目id
        //栏目查找
    	$artla=Db::name('cate')->where('id',$cateid)->find();
        //栏目子栏目查找
    	$artll=Db::name('cate')->where('pid',$cateid)->order('sort','desc')->paginate(10);

    	db('article')->where(array('id'=>$artid))->setInc('click');
    	$articles=db('article')->find($artid);
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
        //上一篇
        $prev= \think\Db::name('article')->where('id','<',$articles['id'])->where('cateid','=',$articles['cateid'])->order('id desc')->limit(1)->value('id');
        //下一篇
        $next= \think\Db::name('article')->where('id','>',$articles['id'])->where('cateid','=',$articles['cateid'])->order('id desc')->limit(1)->value('id');
    	$this->assign('artlaio',$artlaio);
    	$this->assign('articles',$articles);
    	$this->assign('artla',$artla);
    	$this->assign('artll',$artll);
        $this->assign('prev',$prev);
        $this->assign('next',$next);
        return view('lst');
    }
}
