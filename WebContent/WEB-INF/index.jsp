<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>student管理</title>
<link rel="stylesheet" type="text/css" href="./css/all.css" />
<style type="text/css">
</style>
<script
	src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js">

</script>
<style>
tr:nth-child(odd) {
	background: orange;
}

//
奇数
		tr:nth-child(even) {
	background: orange;
}
//
偶数
</style>
<script>
	$(document).ready(function() {
		$("#btn1").click(function() {
			alert("Text: " + $("#test").text());
		});
		$("#btn2").click(function() {
			alert("HTML: " + $("#test").html());
		});
	});
</script>
<script>
	$(document).ready(function() {
		$("p").click(function() {
			$(this).hide();
		});
	});
</script>
<script type="text/javascript">
	function addCheckForm() {
		var form = document.getElementById('addForm');
		var input_name = document.getElementById('addname').value;
		var input_telephone = document.getElementById('addtelephone').value;
		var input_poslnumber = document.getElementById('addposlnumber').value;
		var input_birthday = document.getElementById('addbirthday').value;
		var input_age = document.getElementById('addage').value;
		var input_score = document.getElementById('addscore').value;
		var input_classid = document.getElementById('addclassid').value;
		var input_address = document.getElementById('addaddress').value;

		if (input_name == "" || input_name == null) {
			alert("请输入学員姓名！！！");
			return false;
		}

		if (input_telephone == "" || input_telephone == null) {
			alert("请输入学員电话！！！");
			return false;
		}
		if (input_poslnumber == "" || input_poslnumber == null) {
			alert("请输入学員邮编！！！");
			return false;
		}

		if (input_birthday == "" || input_birthday == null) {
			alert("请输入学員出生年月！！！");
			return false;
		}

		if (input_age == "" || input_age == null) {
			alert("请输入学員年龄！！！");
			return false;
		}

		if (input_score == "" || input_score == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		if (input_classid == "" || input_classid == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		if (input_address == "" || input_address == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		form.submit();
		return true;
	}

	function delCheckForm() {
		var form = document.getElementById('delForm');

		var input_id = document.getElementById("delid").value;
		if (input_id == "" || input_id == null) {
			alert("请输入削除学員id！！！");
			return false;
		}

		form.submit();
		return true;
	}

	function editCheckForm() {
		var form = document.getElementById('editForm');
		var input_id = document.getElementById('editid');
		var input_name = document.getElementById('editname');
		var input_telephone = document.getElementById('edittelephone');
		var input_poslnumber = document.getElementById('editposlnumber');
		var input_birthday = document.getElementById('editbirthday');
		var input_age = document.getElementById('editage');
		var input_score = document.getElementById('editscore');
		var input_classid = document.getElementById('editclassid');
		var input_address = document.getElementById('editaddress');

		if (input_id == "" || input_id == null) {
			alert("请输入学員id！！！");
			return false;
		}

		if (input_name == "" || input_name == null) {
			alert("请输入学員姓名！！！");
			return false;
		}

		if (input_telephone == "" || input_telephone == null) {
			alert("请输入学員电话！！！");
			return false;
		}
		if (input_poslnumber == "" || input_poslnumber == null) {
			alert("请输入学員邮编！！！");
			return false;
		}

		if (input_birthday == "" || input_birthday == null) {
			alert("请输入学員出生年月！！！");
			return false;
		}

		if (input_age == "" || input_age == null) {
			alert("请输入学員年龄！！！");
			return false;
		}

		if (input_score == "" || input_score == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		if (input_classid == "" || input_classid == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		if (input_classid == "" || input_classid == null) {
			alert("请输入学員成绩！！！");
			return false;
		}

		form.submit();
		return true;
	}
</script>
</head>
<body>
	<p style="color: red;">あいうえお</p>
	<p style="color: red;" id="test">
		这是段落中的 <b>粗体</b> 文本。
	</p>
	<button id="btn1">显示文本</button>
	<button id="btn2">显示 HTML</button>
	<p>如果你点我，我就会消失。</p>
	<p>继续点我!</p>
	<p>接着点我!</p>
	<h2>这是一个标题</h2>
	<p>这是一个段落。</p>
	<p>这是另一个段落。</p>
	<img src="./images/color-logo.gif" /> ${msg}
	<h1 align="center">student 情報管理</h1>

	<div id="all_comm" class="all">
		<h2 align="center">student 情報一览</h2>
		<table id="items">
			<tr style="color: red">
				<td style="color: yello">id</td>
				<td>姓名</td>
				<td>年龄</td>
				<td>出生年月</td>
				<td>住所</td>
				<td>電話</td>
				<td>邮编</td>
				<td>班级</td>
				<td>分数</td>
			</tr>
			<c:forEach items="${students}" var="student">
				<tr style="color: blue">
					<td id="id${student.id }">${student.id}</td>
					<td id="name${student.id }">${student.name}</td>
					<td id="age${student.id }">${student.age}</td>
					<td id="birthday${student.id}">${student.birthday}</td>
					<td id="address${student.id}">${student.address}</td>
					<td id="telephone${student.id }">${student.telephone}</td>
					<td id="poslnumber${student.id }">${student.poslnumber}</td>
					<td id="classid${student.id}">${student.classid}</td>
					<td id="score${student.id}">${student.score}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

	<div id="add_comm" class="all" align="left">
		<h2>查找学员</h2>
		<form action="queryByName" method="post">
			<input type="text" placeholder="姓名" name="name"> <input
				type="submit" value="查找学员">
		</form>

		<h2 id="edit_title">添加学员</h2>
		<form id="addForm" action="add" method="post">
			<input id="addname" type="text" placeholder="姓名" name="name" />
			<input id="addtelephone" type="text" placeholder="电话" name="telephone" />
			<input id="addposlnumber" type="text" placeholder="邮编" name="poslnumber" />
			<input id="addbirthday" type="text" placeholder="出生年月" name="birthday" />
			<input id="addage" type="text" placeholder="年龄" name="age" />
			<input id="addscore" type="text" placeholder="分数" name="score" />
			<input id="addaddress" type="text" placeholder="住所" name="address" />
			<input id="addclassid" type="text" placeholder="班级" name="classid" />
			<input type="button" value="添加" onClick="addCheckForm()" />
		</form>
	</div>

	<div id="edit_comm" class="all">
		<h2>删除学员</h2>
		<form id="delForm" action="deleteById" method="post">
			<input id="delid" type="text" placeholder="要删除的id" name="id" />
			<input type="button" value="删除学员" onclick="delCheckForm()" />
		</form>

		<h2 id="edit_title">编辑学员</h2>
		<form id="editForm" action="update" method="post">
			<input id="editid" type="text" placeholder="要修改的id" id="edit_id" name="id" value="要修改的id为" /><br>
			<input id="editname" type="text" placeholder="姓名" name="name" />
			<input id="edittelephone" type="text" placeholder="电话" name="telephone" />
			<input id="editposlnumber" type="text" placeholder="邮编" name="poslnumber" />
			<input id="editbirthday" type="text" placeholder="出生年月" name="birthday" />
			<input id="editage"type="text" placeholder="年龄" name="age" />
			<input id="editscore" type="text" placeholder="分数" name="score" />
			<input id="editaddress" type="text" placeholder="住所" name="score" />
			<input id="editclassid" type="text" placeholder="班级" name="score" />
			<input type="button" value="确定修改" onclick="editCheckForm()" />
		</form>
	</div>
</body>
</html>