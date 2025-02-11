<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>File Upload</title>
<script>
	//input type='file'태그를 5개까지 추가할 수 있는 기능
	function addFileFnc() {
		let fileAttr = Number(document.getElementById("addFileBtn").previousSibling.getAttribute("name").replace("filename", "")) + 1; 
		
		let filesLength = document.querySelectorAll("input[type=file]").length;
		let btn = document.getElementById("addFileBtn").cloneNode(true);
		document.getElementById("addFileBtn").remove();

		let ptag = document.createElement("p");
		ptag.innerHTML = '파 일 : <input type="file" name="filename'+ (fileAttr)+ '"><button type="button" id="addFileBtn" onclick="addFileFnc()">버튼 추가</button>';
		
		document.getElementById("filesDiv").appendChild(ptag);
		if (filesLength == 4) document.getElementById("addFileBtn").remove();
	}

	//업로드 할 파일의 확장자 검색 - 이미지 파일만 업로드 가능하도록 제한
	//최대 5개 파일만 업로드 할 수 있도록 제한
	window.onload = function() {
		fileForm.addEventListener('submit', function(e) {
			let extArr = [ "jpg", "png", "gif", "jpeg", "svg", "bmp", "webp" ];	
			
			let lenTF = false, extTF = false;
			let attrStr = document.querySelector("input[type=file]").getAttribute('multiple');
			let cnt = 0;
			let imgs;
			
			if(attrStr == 'multiple'){
				//mutiple속성이 존재하는 input type='file'만 가능
				imgs = document.querySelector("input[type=file]").files;
				for (let i = 0; i < imgs.length; i++) {
					let extension = imgs[i].name.substring(imgs[i].name.lastIndexOf(".") + 1);
					extArr.forEach(function(obj) {
						if (obj == extension.toLowerCase()) cnt++;
					});
				}
			}else{
				imgs = document.querySelectorAll("input[type=file]");
				for (let i = 0; i < imgs.length; i++) {
					let extension = imgs[i].files[0].name.substring(imgs[i].files[0].name.lastIndexOf(".") + 1);
					extArr.forEach(function(obj) {
						if (obj == extension.toLowerCase()) cnt++;
					});
				}
			}
			
			if (cnt != imgs.length) alert("이미지 파일만 업로드 하실 수 있습니다.");
			else extTF = true;

			let filesLength = imgs.length;
			if (filesLength > 5) alert("파일은 최대 5개까지만 업로드할 수 있습니다.");
			else  lenTF = true;
			
			if (!(lenTF && extTF)) e.preventDefault(); //기본이벤트 방지
		});
	};
</script></head><body>
	<h2>MultipartRequest를 이용한 파일 업로드</h2>
	<dl><dd>
		- cos.jar파일 필요: 
		<a href="https://mvnrepository.com/artifact/com.servlets/cos/05Nov2002">다운 받기</a>
	</dd></dl>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="11_01_fileupload01_process.jsp">
		<fieldset name="fld">
			<legend>파일 업로드 폼</legend>
			<p> 이 름 : <input type="text" name="name"> </p>
			<p> 제 목 : <input type="text" name="subject"> </p>
<!-- 			<p>  -->
<!-- 			<input type="checkbox" name="sel" value="가">가 -->
<!-- 			<input type="checkbox" name="sel" value="나">나 -->
<!-- 			<input type="checkbox" name="sel" value="다">다 -->
<!-- 			</p> -->
			<div id="filesDiv">
				<p> 파 일 : <input type="file" name="filename" multiple='multiple'> </p>
<!-- 				<p>	파 일 : <input type="file" name="filename1"><button type="button" id="addFileBtn" onclick="addFileFnc()">버튼 추가</button></p> -->
			</div>
			<p> <input type="submit" value="파일 올리기"> </p>
		</fieldset>
	</form>
</body>
</html>






