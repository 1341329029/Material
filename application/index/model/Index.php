<?php
namespace app\index\model;
use think\Model;
use think\Db;
use app\index\model\Cate;
class Index  extends Model
{
    //寻找类型为图文列表栏目
    public function getFive(){
       $catFind=Db::name('cate')->where('type','3')->select();
        return $catFind; 
    }
    //循环找到各图文列表栏目的文章
    public function getFouth(){
       $data=$this->getFive();
       //循环写入文章要求按照时间逆序，取前14条
       for ($i=0; $i <count($data); $i++) { 
         $artFouth=Db::name('article')->where('cateid',$data[$i]['id'])
          ->order('time desc')->limit(14)->select();
         $data[$i]['data']= $artFouth;
       }
        return $data;
    }
    //获取单页
    public function getOnly(){
       $getonly=Db::name('cate')->where('type','2')->select();
        return $getonly; 
    }
     public function getAonly(){
       $data=$this->getOnly();
       //循环写入文章要求按照时间逆序，取前14条
       for ($i=0; $i <count($data); $i++) { 
         $artFouth=Db::name('article')->where('cateid',$data[$i]['id'])
          ->order('time desc')->limit(5)->select();
         $data[$i]['data']= $artFouth;
       }
        return $data;
    }
    //获取推荐和点击率多的进行轮播图配置
    public function getHot(){
       $gethot=Db::name('article')->where('rec','1')->order('click desc')->limit(6)->select();
        return $gethot; 

    }

}