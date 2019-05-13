<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class Common extends Controller
{

    public function _initialize(){

        $this->getNavCates();
        $this->getLink();
        $this->getLeft();

       
    }
    //获取导航栏
    public function getNavCates(){
        $cateres=db('cate')->where(array('pid'=>0,'type'=>1))->select();
        foreach ($cateres as $k => $v) {
            $children=db('cate')->where(array('pid'=>$v['id']))->select();
            if($children){
                $cateres[$k]['children']=$children;
            }else{
                $cateres[$k]['children']=0;
            }
        }
        
        $this->assign('cateres',$cateres);
    }

    //获取链接列表的链接
    public function getLink(){
       $getlink=Db::name('link')->select();
        $this->assign('getlink',$getlink); 
    }
   //获取链接列表的链接
    public function getLeft(){
        $getyu=Db::name('cate')->where('rec_index','1')->order('sort desc')->limit(1)->select();
        $id=$getyu['0']['id'];
       $getleft=Db::name('article')->where('cateid',$id)->limit(8)->select();
       $this->assign('getyu',$getyu); 
        $this->assign('getleft',$getleft); 
    }

    

}
