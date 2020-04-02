<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=utf-8"  
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>年报首页</title>
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="js/jquery.countup.min.js"></script>
<script type="text/javascript" src="js/jquery.common.js"></script>
<script type="text/javascript" src="js/jqfloat.js"></script>
<script type="text/javascript" src="js/jquery.vticker-min.js"></script>
<script type="text/javascript" src="js/jquery.nianbao.js"></script>
<script type="text/javascript">
$(function(){
  $('#news-container').vTicker({ 
    speed: 800,
    pause: 3000,
    animation: 'fade',
    mousePause: false,
    showItems: 1
  });
});
</script>
</head>
<body>

  <div class="section-wrap secbody">
    <div class="section section-1">
      <div class="title active">
      <div class="header cwidth clearfix">
        <span class="tit_head"><a href="">中国财务大数据研究分析平台</a></span>
        <div class="h_title">
          <span><a href="" class="cur">首页</a></span>
          <span><a href="pilu.html">指数披露</a></span>
          <span><a href="fenxi.html">指数分析</a></span>
          <span><a href="aboutus.html">研究报告</a></span>
          <span><a href="">关于我们</a></span>
          <span class="last"><a href="./user/Login">登录</a></span>
        </div>
      </div>
      <div class="content cwidth">
        <div class="co_s">
        <form action="./report/selectColumnLike" method="post">
  	  	  <input type="text" class="co_text" name="likename" value="请输入企业代码/简称/拼音"/>
  	  	  <input type="submit" class="co_search"  value="搜索"/>
  	  	 </form>
          <span class="con_tip">热门搜索：2017&nbsp;&nbsp;000001&nbsp;&nbsp;平安银行</span>
        </div>
        <div class="c_scro" id="news-container">
          <ul>
            <li>
              <span>华茂股份2017年度报告可读指数</span>
              <span class="num">96.50</span>
            </li>
            <li>
              <span>平安银行2017年度报告可读指数</span>
              <span class="num">91.40</span>
            </li>
            <li>
              <span>保利地产2017年度报告可读指数</span>
              <span class="num">89.90</span>
            </li>
            <li>
              <span>中国化学2017年度报告可读指数</span>
              <span class="num">92.20</span>
            </li>
          </ul>      
        </div>
      <div class="total_bit">
        <span>实时总量化字段数：</span><span id="dataNums" data-counter-time="6000" data-counter-delay="50">666,777,888</span><span>Mb</span>
      </div>
      <ul class="fubar">
        <div class="f_lt"></div>
        <div class="f_rt"></div>
        <div class="f_lb"></div>
        <div class="f_rb"></div>
        <li class="li1"><span>可读指数</span></li>
        <li class="li2"><span>情感指数</span></li>
        <li class="li3"><span>风险指数</span></li>
        <li class="li4"><span class="last">更多</span></li>
      </ul>

      </div>  
    </div>
    <span class="sec1-bgb"></span>
  </div>

 

  <div class="section section-2">
    <div class="title">
      <table class="num_list cwidth" cellpadding="0" cellspacing="0" border="0">
        <caption>指数披露</caption>    
        <thead>
          <th>代码</th>
          <th>简称</th>
          <th>年报名称</th>
          <th>门类</th>
          <th>地域</th>
          <th>可读指数</th>
        </thead>
<!--         <tbody class="li_con">
         
        </tbody> -->
        <tr>
          <td>600310</td>
          <td>桂东电力</td>
          <td>2017年度报告</td>
          <td>电力业</td>
          <td>广西</td>
          <td>83.27</td>
        </tr>
        <tr>
          <td>601117</td>
          <td>中国化学</td>
          <td>2017年度报告</td>
          <td>建筑业</td>
          <td>上海</td>
          <td>92.20</td>
        </tr>
        <tr>
          <td>000001</td>
          <td>平安银行</td>
          <td>2017年度报告</td>
          <td>金融业</td>
          <td>深圳</td>
          <td>91.40</td>
        </tr>
        <tr>
          <td>000001</td>
          <td>平安银行</td>
          <td>2017年度报告</td>
          <td>金融业</td>
          <td>深圳</td>
          <td>91.40</td>
        </tr>
        <tr class="ta_last">
          <td>600048</td>
          <td>保利地产</td>
          <td>2017年度报告</td>
          <td>房地产业</td>
          <td>广州</td>
          <td>89.90</td>
        </tr>  
      </table>
    </div>
  </div>

  <div class="section section-3">
    <div class="title">
      <div class="bubbles cwidth">
        <span>指数分析</span>
        <div class="bu_con">
          <div id="cir1"><p>语义分析</p></div>
          <div id="cir2"><p>角色标注</p></div>
          <div id="cir3"><p>句向量</p></div>
          <div id="cir4"><p>语义分布</p></div>
          <div id="cir5"><p>句法分析</p></div>
          <div id="cir6"><p>词向量</p></div>
          <div id="cir7"><p>词法分析</p></div>
          <div id="cir8"><p>词频</p></div>
          <div id="cir9"><p>词云</p></div>
          <div id="cir10"><p>篇幅分析</p></div>
          <div id="cir11"><p>聚类分析</p></div>
          <div id="cir12"><p>去除量纲</p></div>
          <div id="cir13"><p>语料库</p></div>
          <div id="cir14"><p>依存句法</p></div>
          <div id="cir15"><p>词性标注</p></div>
        </div> 
      </div>
    </div>
  </div>
  <div class="section section-4">
    <div class="title cwidth">
      <div class="analy">
        <span class="a_h">指数分析</span>
        <div id="an_all">
          <div id="an_1">
            <div class="ana_pic1">
              <span class="anal_line"></span>
              <span class="anal_dot dot1"></span>
              <span class="anal_line2"></span>
              <span class="anal_dot dot2"></span>
              <span class="anal_line3"></span>
              <span class="anal_num">96.42</span>
              <span class="anal_lt"></span>
              <span class="anal_add">陕西</span>
              <span class="anal_ave">区域年报指数平均值</span>
              <span class="anal_rt"></span>
            </div>
            <div class="ana_pic2"></div>
            <div class="ana_pic3"></div>
          </div>
          <div id="an_2"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="section section-5">
    <div class="title">
      <div class="report cwidth">
        <span class="r_h">研究报告</span>
        <div class="r_con clearfix">
          <div class="re_con"></div>
          <div class="re_h"><span>船舶产业链系列报告之二</span>
            <p>船舶总装制造产业处于产业链的中游制造环节，其上游产业包括原材料、船舶设计、船舶配套等，其下游客户为航运公司或租赁公司。船舶金融为船舶制造企业和航运企业提供买房和卖方信贷、保函等金融类服务保函等金融类服务保函等金.....</p>
            <a href="">查看详情</a>
          </div>
        </div>
      </div>

      <div class="footer clearfix"> 
        <div>
          <span>首页</span>
          <dd>指数分析</dd>
          <dd>指数披露</dd>
          <dd>研究报告</dd>
        </div>
        <div class="about_us">
          <span>关于我们</span>
          <dd>中译语通科技（陕西）有限公司</dd>
          <dd>电话：029-37137777</dd>
          <dd>地址：陕西省西咸新区秦汉新城兰池大道兰池大厦20层</dd>
        </div>
        <div>
          <span>合作单位</span>
          <dd>西北大学经济与管理学院</dd>
        </div>
        <div class="last"><img src="images/h/logo.jpg"/></div>
      </div>
       <p class="logo">copyright@2018中译语通科技（陕西）有限公司&nbsp;&nbsp;版权所有</p>
     </div>
    </div>
  </div>
    <ul class="section-btn">
      <li class="on"></li>
      <li></li>
      <li></li>
      <li></li>
      <li></li>
    </ul>
    <div class="arrow"><img src="images/h/dn.png"/></div>
 
</body>
</html>