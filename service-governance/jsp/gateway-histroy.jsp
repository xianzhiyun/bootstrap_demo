<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>gateway-config</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.5/themes/icon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/jquery-easyui-1.5/demo/demo.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/xcConfirm.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.5/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.5/constant.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/gateway-histroy.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/xcConfirm.js"></script>
<style>
html,body{margin: 0;padding:0}
</style>
</head>
<body>
		<div style="width: 100%; text-align:center;">
			<div style="text-align:center;white-space: nowrap;"><b style="color:blue"><font color="red"  size="5px">[公网网关服务历史版本列表]</font></b></div>
		</br>
			<div style="text-align:left;white-space: nowrap;">
				<a style="color: green; text-decoration:none;font-size:15px;"href="javascript:void(0)"  id="adding"   onclick="window.parent.Open('公网网关待审核','check.jsp')"></a>			
				<a style="color: red; text-decoration:none;font-size: 15px;"href="javascript:void(0)"  id="deleteing" onclick="window.parent.Open('公网网关待审核','check.jsp')"></a>	
				<a style="color: blue; text-decoration:none;font-size: 15px;"href="javascript:void(0)"  id="updateing" onclick="window.parent.Open('公网网关待审核','check.jsp')"></a>	
				<a style="color: #FF9933; text-decoration:none;font-size: 15px;"href="javascript:void(0)"  id="backing" onclick="window.parent.Open('公网网关待审核','check.jsp')"></a>			
			</div>
			</br>
		</div>
			<div id="tb">
				<a style="text-align:right;"href="javascript:void(0)" class="easyui-linkbutton"
					iconcls="icon-reload" plain="true"
					onclick="javascript:window.location.reload()"><font   size="2px">刷新</font></a>
				 <div  style="float: right;">  
                    <input id="ss" class="easyui-searchbox"  
                        searcher="doSearch" prompt="请输入搜索内容"  
                        style="width: 300px; vertical-align: middle;"></input>   
                </div>  
			</div>
		<table id="dg"  ></table>
</body>
</html>
<script type="text/javascript">
window.parent.refreshgatewaycheck();
$("#deleteing").text("待删除未审核("+window.parent.deletelist.length+")");
$("#adding").text("待添加未审核("+window.parent.addlist.length+")");
$("#updateing").text("待更新未审核("+window.parent.updatelist.length+")");
$("#backing").text("待回退未审核("+window.parent.backlist.length+")");
$(function(){ 
	initHistroy();
}); 
</script>