<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		// 자바스크립트에서의 json 객체의 표현
		var person = {
			"name" : "김서연",
			"age" : "25",
			"subject" : [ "자바", "하둡", "시큐어코딩" ],
			"addr" : {
				"zip" : "111-222",
				"addr1" : "인천시"
			},
			"history" : [ {
				"subject" : "java",
				"month": "11"
			}, {
				"subject" : "servlet",
				"month" : "12"
			} ]
		}
		//alert(person);
		document.write("<h3>name:"+person.name+"</h3>");
		document.write("<h3>age:"+person.age+"</h3>");
		document.write("<h3>addr:"+person.addr.addr1+"</h3>");
		document.write("<h3>zip:"+person.addr.zip+"</h3>");
		document.write("<h3>subject:"+person.subject[0]+"</h3>");
		document.write("<h3>subject2:"+person.subject[1]+"</h3>");
		document.write("<h3>history:"+person.history[0].subject+"</h3>");
		document.write("<h3>history month:"+person.history[0].month+"</h3>");
		document.write("<h3>history2:"+person.history[1].subject+"</h3>");
		document.write("<h3>history2 month:"+person.history[1].month+"</h3>");		
		
		</script>
</body>
</html>