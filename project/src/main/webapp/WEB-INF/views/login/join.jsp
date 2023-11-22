<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>부트스트랩 회원가입 폼</title>
<!-- 부트스트랩 CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container mt-5">
		<form action="joinMember"
			style="max-width: 400px; margin: auto; border: 1px solid #ced4da; padding: 20px; border-radius: 5px;">
			<h2>회원가입</h2>
			<div class="form-group">
				<label for="inputZip">아이디</label>
				<div class="input-group">
					<input type="text" id="id" class="form-control" name="member_id" required>
					<div class="input-group-append">
						<button type="button" class="btn btn-secondary">아이디 중복체크</button>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword">비밀번호</label> <input type="password"
					id="pw" class="form-control" name="member_pw" required>
			</div>
			<div class="form-group">
				<label for="inputName">이름</label> <input type="text" id="name"
					class="form-control" name="member_name" required>
			</div>
			<div class="form-group">
				<label for="inputName">닉네임</label> <input type="text" id="nickname"
					class="form-control" name="member_nickname" required>
			</div>

			<div class="form-group">
				<label for="inputEmail">이메일</label>
				<div class="input-group">
					<input type="text" id="email" class="form-control"
						style="border-radius: 4px 0 0 4px;" name="member_email" required>
					<div class="input-group-prepend">
						<span class="input-group-text" style="border-radius: 0 4px 4px 0;">@</span>
					</div>
					<select class="custom-select form-control"
						style="border-radius: 0 4px 4px 0;" name="member_domain" required>
						<option value="">도메인 선택</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<!-- 추가적인 도메인은 여기에 추가할 수 있습니다 -->
					</select>
				</div>
			</div>
<div class="form-group">
    <label for="jumin">주민번호</label>
    <div class="input-group">
        <input type="text" id="jumin1" class="form-control" style="border-radius: 4px 0 0 4px;" maxlength="6" name="member_jumin1" required>
        <div class="input-group-prepend">
            <span class="input-group-text" style="border-radius: 0 4px 4px 0;">-</span>
        </div>
        <input type="text" id="jumin2" class="form-control" style="border-radius: 4px 0 0 4px;" maxlength="1" name="member_jumin2" required>
    </div>
</div>



			<div class="form-group">
				<label for="jumin">전화번호</label>
				<div class="input-group">
					<input type="text" id="phone1" class="form-control"
						style="border-radius: 4px 0 0 4px;" name="member_phone1" required>
					<div class="input-group-prepend">
						<span class="input-group-text" style="border-radius: 0 4px 4px 0;">-</span>
					</div>
					<input type="text" id="phone2" class="form-control"
						style="border-radius: 4px 0 0 4px;" name="member_phone2" required>
					<div class="input-group-prepend">
						<span class="input-group-text" style="border-radius: 0 4px 4px 0;">-</span>
					</div>
					<input type="text" id="phone3" class="form-control"
						style="border-radius: 4px 0 0 4px;" name="member_phone3" required>
				</div>
			</div>
			<div class="form-group">
				<label for="inputZip">우편번호</label>
				<div class="input-group">
					<input type="text" id="post" class="form-control" name="member_post" required>
					<div class="input-group-append">
						<button type="button" class="btn btn-secondary">우편번호 찾기</button>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress">주소</label> <input type="text"
					id="address1" class="form-control" name="member_address1" required>
			</div>
			<div class="form-group">
				<label for="inputAddress2">상세 주소</label> <input type="text"
					id="address2" class="form-control" name="member_address2" required>
			</div>

			<button type="submit" class="btn btn-primary">가입하기</button>
		</form>
	</div>

	<!-- 부트스트랩 JavaScript 및 jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		
<script>
    document.getElementById("jumin2").addEventListener("input", function() {
        const firstDigit = document.getElementById("jumin1").value;
        const input = this.value;

        if (input.length === 1) {
            this.value = input + '******';
        } else {
            this.value = input.charAt(0);
        }
    });

    document.getElementById("jumin2").addEventListener("keydown", function(event) {
        if (event.key === "Backspace") {
            event.preventDefault();
            this.value = this.value.slice(0, -1);
        }
    });
</script>


</body>
</html>
