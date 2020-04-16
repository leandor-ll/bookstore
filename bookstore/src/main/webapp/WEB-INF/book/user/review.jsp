<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>

<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<script type="text/javascript" src="js/lrscroll_1.js"></script>


<script type="text/javascript" src="js/n_nav.js"></script>
<script type="text/javascript" src="js/milk_ban.js"></script>
<script type="text/javascript" src="js/paper_ban.js"></script>
<script type="text/javascript" src="js/baby_ban.js"></script>
<script type="text/javascript">

	$(function() {
		$('#common-form').find('input[type=checkbox]').bind('click', function(){  
          	var id = $(this).attr("id");
        
        	//当前的checkbox是否选中
        	if(this.checked){
            //除当前的checkbox其他的都不选中
            	$("#common-form").find('input[type=checkbox]').not(this).attr("checked", false); 
            
            //选中的checkbox数量
            	var selectleng = $("input[type='checkbox']:checked").length;
            
        	}else{
            
        	}
    	}); 
	})

		
</script>
<body>
	<textarea rows="10" cols="40">	
	</textarea><br>
	<input type="file" name=""/><br>
	<form id="common-form">
		<input name="check1" type="checkbox" />好评 
		<input name="check2" type="checkbox" />中评 
		<input name="check3" type="checkbox" />差评
	</form>
	<br>
	<input type="submit">
</body>
</html>
