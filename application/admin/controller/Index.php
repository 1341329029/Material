<?php
namespace app\admin\controller;
class Index extends Base
{
    public function index()
    {
    	$data['date'] = date('Y-m-d H:i:s');
    	$data['name'] = session('name');
    	$this->assign('data',$data);
    	return $this->fetch();
        return view();
    }
}
