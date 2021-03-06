<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="util.*, bean.*, java.util.List" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
           课表信息添加
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
       <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <style>
    	
    </style>
    
    <script type="text/javascript">
    	function goback(){
    		history.back(-1);
    	}
    	
    	function check(){
    		if(document.frm.teacherId.value == ''){
    			alert('教师编号不能为空 !');
    			document.frm.teacherId.select();
    			return;
    		}
    		if(document.frm.courseId.value == ''){
    			alert('课程不能为空 !');
    			document.frm.courseId.select();
    			return;
    		}
    		if(document.frm.classId.value == ''){
    			alert('班级不能为空 !');
    			document.frm.classId.select();
    			return;
    		}
    		if(document.frm.week1.value == ''){
    			alert('开始周次不能为空 !');
    			document.frm.week1.select();
    			return;
    		}
    		if(document.frm.week2.value == ''){
    			alert('结束周次不能为空 !');
    			document.frm.week2.select();
    			return;
    		}
    		
    		if(parseInt(document.frm.week1.value) > parseInt(document.frm.week2.value)){
    			alert('周次选择错误！！！');
    			return;
    		}
    		
    		if(document.frm.weekdays.value==''){
    			alert('星期不能为空！！！');
    			return;
    		}
    		
    		if(document.frm.times.value == ''){
    			alert('时间不能为空 !');
    			document.frm.times.select();
    			return;
    		}
    		if(document.frm.address.value == ''){
    			alert('地址不能为空 !');
    			document.frm.address.select();
    			return;
    		}
    		document.frm.submit();
    		
    	}
    	
</script>
    
    <body>
        
        
        
          <form name="frm" method="post" action="admin_TimeTableAdddoServlet">
			<table class="table table-bordered" width="50%" border="1" style="border-collapse:collapse">
			<caption><h3>课表信息添加</h3></caption>
			<tr>
				<td>教师工号:</td>
				<td><input type="text" name="teacherId" value=""></td>
			</tr>
			<tr>
				<td>课程:</td>
				<td>
				<select style="display:block;" name="courseId">
				<option value="">请选择</option>
			 	<c:forEach items="${allcourse}"	var="bean">		
					<option value="${bean.courseId}" >${bean.courseId}  ${bean.courseName }</option>
				</c:forEach>
			
		  </select></div></td>
			</tr>
			<tr>
				<td>班级:</td>
				<td>
				<select style="display:block;" name="classId" >
				<option value="">请选择</option>
			 	<c:forEach items="${allclass}"	var="bean">		
					<option value="${bean.clazz}" >${bean.clazz}</option>
				</c:forEach>
			
		  </select></td>
			</tr>
			<tr>
				<td>周次:</td>
				<td>
				从
				<select name="week1">
					<option value="">请选择</option>
			 		<c:forEach items="${allweek}"	var="bean">		
						<option value="${bean}">第${bean}周</option>
				</c:forEach>
		  		</select>
		  		到
		  		<select name="week2">
					<option value="">请选择</option>
			 		<c:forEach items="${allweek}"	var="bean">		
						<option value="${bean}">第${bean}周</option>
				</c:forEach>
		  		</select>
				</td>
			</tr>
			<tr>
				<td>星期:</td>
				<td>
					<select name="weekdays">
							<option value="">请选择</option>
							<option value="1">星期一</option>
							<option value="2">星期二</option>
							<option value="3">星期三</option>
							<option value="4">星期四</option>
							<option value="5">星期五</option>
							<option value="6">星期六</option>
							<option value="7">星期天</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>时间:</td>
				<td>
					<select name="times">
							<option value="">请选择</option>
							<option value="1">第一  二节</option>
							<option value="2">第三 四节</option>
							<option value="3">第五  六节</option>
							<option value="4">第七  八节</option>
							<option value="5">第九  十节</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>地址:</td>
				<td><input name="address" type="text" value="${bean.address}"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="hidden" name="id" value="${bean.teacherId }" />
					<button type="button" class="btn btn-primary btn-lg btn-block" onclick="check()">保存</button>
					
				</td>
			</tr>
		</table>
	</form>	
          
  
    </body>

</html>