﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CKEditor353.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<!--此页面实现Word图片自动批量上传的功能-->
    <title>WordPaster For CKEditor-3.x</title>
    <link type="text/css" rel="Stylesheet" href="WordPaster/css/WordPaster.css" />
    <link type="text/css" rel="Stylesheet" href="WordPaster/js/skygqbox.css" />
    <script type="text/javascript" src="WordPaster/js/json2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/jquery-1.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/WordPaster.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/skygqbox.js" charset="utf-8"></script>
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
</head>
<body>
	<div style="font-size: medium; line-height: 130%;">
		<p>
			演示方法：</p>
		<ul style="list-style-type: decimal;">
			<li>打开Word文档，复制多张图片，在编辑器中按下 Ctrl + V 键，编辑器将自动上传所有图片。</li>
			<li>复制电脑中任意图片文件，然后点击编辑器中的粘贴图片按钮<img src="WordPaster/css/paster.png" width="16px" height="16px" />。</li>
			<li>通过QQ或其它软件截屏，复制图片，然后点击编辑器中的图片粘贴按钮<img src="WordPaster/css/paster.png" width="16px" height="16px" />。</li>
		</ul>
		<p>
			相关问题：</p>
		<ul style="list-style-type: decimal;">
			<li>WindowsXP如果无法识别数字证书，请先下载运行<a target="_blank" href="http://yunpan.cn/lk/sVWS4E6bXChcZ">Windows证书补丁</a></li>
			<li>如果无法安装组件请下载进行安装<a target="_blank" href="http://www.microsoft.com/downloads/details.aspx?FamilyID=9b2da534-3e03-4391-8a4d-074b9f2bc1bf%20">Microsoft Visual C++ 2008 Redistributable Package (x86)</a></li>
			<li>如果有任何问题或建议请向我们<a target="_blank" href="http://www.ncmem.com/blog/guestbook.asp">反馈</a></li>
		</ul>
	</div>
	<!--创建FCKEditor控件-->
	<textarea id="editor1" name="editor1"><img src="http://mat1.gtimg.com/www/images/qq2012/qqlogo_1x.png" width="134" height="44" /></textarea>
    <script type="text/javascript">
        var pasterMgr = new WordPasterManager();
        //pasterMgr.Config["PostUrl"] = "http://www.ncmem.com/products/upload_ori.aspx"
        pasterMgr.Config["PostUrl"] = "http://localhost:2797/asp.net/upload.aspx"
        pasterMgr.Config["Cookie"] = 'ASP.NET_SessionId=<%=Session.SessionID%>';
        pasterMgr.Load(); //加载控件

        CKEDITOR.on('instanceReady', function (evt)
        {
            pasterMgr.SetEditor(evt.editor);
        });
        //自定义快捷键
        CKEDITOR.config.keystrokes = [
			[CKEDITOR.CTRL + 86/*V*/, 'imagepaster']
        ];
        //加载CKEditor编辑器
        CKEDITOR.replace('editor1');
	</script>
</body>
</html>
