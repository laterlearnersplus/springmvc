<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020-01-04
  Time: 12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<!--主页面-->
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Amaze UI Admin index Examples</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="${pageContext.request.contextPath}/icon" type="image/png" href="${pageContext.request.contextPath}/assets/i/favicon.png">
  <link rel="${pageContext.request.contextPath}/apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/amazeui.datatables.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/app.css">
  <script src="${pageContext.request.contextPath}/assets/js/echarts.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/amazeui.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/amazeui.datatables.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/dataTables.responsive.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>
  <style>
    iframe{
      width: 85%;
      height: 100%;
      position: absolute;
      margin: 0px auto;
    }
    #cenderdiv{
      height: 700px;
    }
    footer{
      color: white;
      margin-top: 30px;
      padding-top: 30px;
      position: absolute;
      width: 100%;
      background-color:rgb(47,54,56);
    }

  </style>

</head>

<body data-type="index">
<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
<div class="am-g tpl-g" >
  <!-- 头部 -->
  <header>
    <!-- logo -->
    <div class="am-fl tpl-header-logo">
      <a href="javascript:;"><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt=""></a>
    </div>
    <!-- 右侧内容 -->
    <div class="tpl-header-fluid">
      <!-- 侧边切换 -->
      <div class="am-fl tpl-header-switch-button am-icon-list">
        <span>

                </span>
      </div>
      <!-- 搜索 -->
      <div class="am-fl tpl-header-search">
        <form class="tpl-header-search-form" action="javascript:;">
          <button class="tpl-header-search-btn am-icon-search"></button>
          <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
        </form>
      </div>
      <!-- 其它功能-->
      <div class="am-fr tpl-header-navbar">
        <ul>
          <!-- 欢迎语 -->
          <li class="am-text-sm tpl-header-navbar-welcome">
<%--            <a href="javascript:;">欢迎你, <span>Amaze UI</span> </a>--%>
            <a href="javascript:;">欢迎你, <span><shiro:principal property="name"></shiro:principal></span> </a>
          </li>

          <!-- 新邮件 -->
          <li class="am-dropdown tpl-dropdown" data-am-dropdown>
            <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle" data-am-dropdown-toggle>
              <i class="am-icon-envelope"></i>
              <span class="am-badge am-badge-success am-round item-feed-badge">4</span>
            </a>
            <!-- 弹出列表 -->
            <ul class="am-dropdown-content tpl-dropdown-content">
              <li class="tpl-dropdown-menu-messages">
                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                  <div class="menu-messages-ico">
                    <img src="../../assets/img/user04.png" alt="">
                  </div>
                  <div class="menu-messages-time">
                    3小时前
                  </div>
                  <div class="menu-messages-content">
                    <div class="menu-messages-content-title">
                      <i class="am-icon-circle-o am-text-success"></i>
                      <span>夕风色</span>
                    </div>
                    <div class="am-text-truncate"> Amaze UI 的诞生，依托于 GitHub 及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。 </div>
                    <div class="menu-messages-content-time">2016-09-21 下午 16:40</div>
                  </div>
                </a>
              </li>

              <li class="tpl-dropdown-menu-messages">
                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                  <div class="menu-messages-ico">
                    <img src="../../assets/img/user02.png" alt="">
                  </div>
                  <div class="menu-messages-time">
                    5天前
                  </div>
                  <div class="menu-messages-content">
                    <div class="menu-messages-content-title">
                      <i class="am-icon-circle-o am-text-warning"></i>
                      <span>禁言小张</span>
                    </div>
                    <div class="am-text-truncate"> 为了能最准确的传达所描述的问题， 建议你在反馈时附上演示，方便我们理解。 </div>
                    <div class="menu-messages-content-time">2016-09-16 上午 09:23</div>
                  </div>
                </a>
              </li>
              <li class="tpl-dropdown-menu-messages">
                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                  <i class="am-icon-circle-o"></i> 进入列表…
                </a>
              </li>
            </ul>
          </li>

          <!-- 新提示 -->
          <li class="am-dropdown" data-am-dropdown>
            <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
              <i class="am-icon-bell"></i>
              <span class="am-badge am-badge-warning am-round item-feed-badge">5</span>
            </a>

            <!-- 弹出列表 -->
            <ul class="am-dropdown-content tpl-dropdown-content">
              <li class="tpl-dropdown-menu-notifications">
                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                  <div class="tpl-dropdown-menu-notifications-title">
                    <i class="am-icon-line-chart"></i>
                    <span> 有6笔新的销售订单</span>
                  </div>
                  <div class="tpl-dropdown-menu-notifications-time">
                    12分钟前
                  </div>
                </a>
              </li>
              <li class="tpl-dropdown-menu-notifications">
                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                  <div class="tpl-dropdown-menu-notifications-title">
                    <i class="am-icon-star"></i>
                    <span> 有3个来自人事部的消息</span>
                  </div>
                  <div class="tpl-dropdown-menu-notifications-time">
                    30分钟前
                  </div>
                </a>
              </li>
              <li class="tpl-dropdown-menu-notifications">
                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                  <div class="tpl-dropdown-menu-notifications-title">
                    <i class="am-icon-folder-o"></i>
                    <span> 上午开会记录存档</span>
                  </div>
                  <div class="tpl-dropdown-menu-notifications-time">
                    1天前
                  </div>
                </a>
              </li>


              <li class="tpl-dropdown-menu-notifications">
                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                  <i class="am-icon-bell"></i> 进入列表…
                </a>
              </li>
            </ul>
          </li>

          <!-- 退出 -->
          <li class="am-text-sm">
            <a href="${pageContext.request.contextPath}/logout.html">
              <span class="am-icon-sign-out"></span> 退出
            </a>
          </li>
        </ul>
      </div>
    </div>

  </header>
  <!-- 风格切换 -->
  <!--        <div class="tpl-skiner">-->
  <!--            <div class="tpl-skiner-toggle am-icon-cog">-->
  <!--            </div>-->
  <!--            <div class="tpl-skiner-content">-->
  <!--                <div class="tpl-skiner-content-title">-->
  <!--                    选择主题-->
  <!--                </div>-->
  <!--                <div class="tpl-skiner-content-bar">-->
  <!--                    <span class="skiner-color skiner-white" data-color="theme-white"></span>-->
  <!--                    <span class="skiner-color skiner-black" data-color="theme-black"></span>-->
  <!--                </div>-->
  <!--            </div>-->
  <!--        </div>-->
  <!-- 侧边导航栏 -->
  <div class="left-sidebar">

    <!-- 用户信息 -->
    <div class="tpl-sidebar-user-panel" >
      <div class="tpl-user-panel-slide-toggleable">
        <div class="tpl-user-panel-profile-picture">
          <img src="${pageContext.request.contextPath}/assets/img/user.jpg" alt="">
        </div>
        <span class="user-panel-logged-in-text">
              <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
                        <shiro:principal property="name"></shiro:principal>
          </span>
        <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span> 账号设置</a>
      </div>
    </div>

    <!-- 菜单 -->
    <ul class="sidebar-nav" >
      <li class="sidebar-nav-heading">Components <span class="sidebar-nav-heading-info"> 附加组件</span></li>
      <li class="sidebar-nav-link">
        <a href="cender.html" class="active" target="main">
          <i class="am-icon-home sidebar-nav-link-logo"></i> 首页
        </a>
      </li>
      <li class="sidebar-nav-link">
        <a href="javascript:;" class="sidebar-nav-sub-title" onclick="queryul()">
          <i class="am-icon-table sidebar-nav-link-logo"></i> 查询列表
          <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
        </a>
        <ul class="sidebar-nav">

          <li class="sidebar-nav-link">
<%--            <a href="${pageContext.request.contextPath}/emp/query.html" target="main">--%>
              <a href="${pageContext.request.contextPath}/emp" target="main">
                <span class="sidebar-nav-link-logo"></span> Emp Query
              </a>
          </li>

          <li class="sidebar-nav-link" >
            <a href="${pageContext.request.contextPath}/student/query.html" target="main">
              <span class="sidebar-nav-link-logo"></span> Student Query
            </a>
          </li>

        </ul>

      </li>
      <li class="sidebar-nav-link">
        <a href="${pageContext.request.contextPath}/tables.jsp" target="main">
          <i class="am-icon-table sidebar-nav-link-logo"></i> 表格
        </a>
      </li>
      <li class="sidebar-nav-link">
        <a href="${pageContext.request.contextPath}/.jsp" target="main">
          <i class="am-icon-calendar sidebar-nav-link-logo"></i> 日历
        </a>
      </li>
      <li class="sidebar-nav-link">
        <a href="${pageContext.request.contextPath}/form.html" target="main">
          <i class="am-icon-wpforms sidebar-nav-link-logo"></i> 表单

        </a>
      </li>
      <li class="sidebar-nav-link">
        <a href="${pageContext.request.contextPath}/chart.html" target="main">
          <i class="am-icon-bar-chart sidebar-nav-link-logo"></i> 图表

        </a>
      </li>

      <li class="sidebar-nav-link">
        <a href="${pageContext.request.contextPath}/register.html">
          <i class="am-icon-clone sidebar-nav-link-logo"></i> 注册
        </a>
      </li>
      <li class="sidebar-nav-link" >
        <a href="index">
          <i class="am-icon-key sidebar-nav-link-logo"></i> 登录
        </a>
      </li>
    </ul>
  </div>

  <!-- 内容区域 -->
  <div id="cenderdiv">
    <%--    <iframe src="cender.html" frameborder="0" scrolling="no"  name="main" ></iframe>--%>
  <iframe src="cender.jsp" frameborder="0" name="main"></iframe>
  </div>
</div>
<!--    end-->
<footer class="blog-footer" >
  <div class="am-g am-g-fixed blog-fixed am-u-sm-centered blog-footer-padding">
    <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
      <h3>简介</h3>
      <p class="am-text-sm">
        画堂晨起，来报雪花坠。<br>
        高卷帘栊看佳瑞，皓色远迷庭砌。<br>
        盛气光引炉烟，素草寒生玉佩。<br>
        应是天仙狂醉，乱把白云揉碎。<br>
        <br>—— 李白《清平乐·画堂晨起》
      </p>
    </div>
    <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
      <h3>社交账号</h3>
      <p>
        <a href=""><span class="am-icon-qq am-icon-fw am-primary blog-icon blog-icon"></span></a>
        <a href=""><span class="am-icon-github am-icon-fw blog-icon blog-icon"></span></a>
        <a href=""><span class="am-icon-weibo am-icon-fw blog-icon blog-icon"></span></a>
        <a href=""><span class="am-icon-reddit am-icon-fw blog-icon blog-icon"></span></a>
        <a href=""><span class="am-icon-weixin am-icon-fw blog-icon blog-icon"></span></a>
      </p>

      <p>请联系我们</p>
    </div>
    <div class="am-u-sm-12 am-u-md-4- am-u-lg-4">
      <h1>我们站在巨人的肩膀上</h1>
      <p>
      <ul>
      <li>资源</li>
      <li>帮助</li>
      <li>社区</li>
      <li>语言</li>
      <li>关于</li>
    </ul>
      </p>

    </div> <div class="blog-text-center" style="text-align: center">
    <p>Super-powered by Google &copy;2010-2019. 代码授权方式：MIT-style License. 文档授权方式：CC BY 4.0.</p>
    <p>当前版本：2020-01-02 8.1.0</p>

  </div>
  </div>

</footer>


</body>

</html>
<script>
  $(function () {
    $('#queryul').css('display')=='none'

  })
  function queryul() {
    if($('#queryul').css('display')=='none'){
      $('#queryul').css('display','block')
    }else{
      $('#queryul').css('display','none')
    }
  }
</script>