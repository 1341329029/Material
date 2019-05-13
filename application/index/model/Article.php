<?php
namespace app\index\model;
use think\Model;
use app\index\model\Cate;
class Article  extends Model
{
	//获取栏目下所有文章
   public function getAllArticles($cateid){
        $cate=new Cate();
        $allCateID=$cate->getchilrenid($cateid);
        $artRes=db('article')->where("cateid IN($allCateID)")->order('id desc')->paginate(10);
        return $artRes;
    }
   
}