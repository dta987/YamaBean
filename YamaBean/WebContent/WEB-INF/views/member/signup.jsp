<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/rvTOP.jsp"%>

<%
	int myoffset = 3;
	int mywidth = twelve - 2 * myoffset;
	int label = 4;
	int input = 3;

	boolean idOverlapCheck = false;
	boolean nicknameOverlapCheck = false;
	boolean pwOverlapCheck = false;
	boolean emailOverlapCheck = false;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<div class="col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>"
		style="margin-top: 100px;">
		<form class="form-horizontal" method="POST">
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>ID</label>
				</div>
				<div class="form-group1" style="width: 230px; float: left;"
					align="left">
					<input type="text" name="id" id="id" class="form-control"
						placeholder="Enter Your ID" pattern="[a-zA-Z]{1}[a-zA-Z0-9]{4,11}"
						title="ID는 4~11자리의 영문,숫자의 조합으로, 첫 글자는 영문이어야 합니다." required />
				</div>
				<div class="form-group1"
					style="width: 110px; float: left; padding-left: 10px;" align="left">
					<input type="button" id="ajax_request"
						class="btn btn-primary btn-block" value="중복검사" />
				</div>
				<form:errors id="id" cssClass="error" />
			</div>

			<!-- 비밀번호 -->





			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>Password</label>
				</div>
				<div class="form-group1" style="float: left;" align="left">
					<input type="password" name="password" id="password"
						class="form-control" placeholder="Enter Your Password"
						pattern=".*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*"
						title="특수문자 / 문자 / 숫자 포함 형태의 8~15자리 이내" required />
				</div>
				<form:errors id="password" cssClass="error" />
			</div>




			<!-- 닉네임 -->




			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>name</label>
				</div>
				<div class="form-group1" style="float: left;" align="left">
					<input type="text" name="name" id="name" class="form-control"
						placeholder="Enter Your Nickname" required />
				</div>
				<form:errors id="name" cssClass="error" />
			</div>

			<!-- email -->
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>email</label>
				</div>
				<div class="form-group1" style="float: left;" align="left">
					<input type="text" name="email" id="email" class="form-control"
						placeholder="Enter Your Nickname"
						pattern="[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$"
						title="올바른 이메일 형식으로 입력해 주세요." />
				</div>
				<form:errors id="email" cssClass="error" />
			</div>

			<!-- gender -->
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>Gender</label>
				</div>

				<div class="form-group1" style="width: 230px; float: left;"
					align="left">
					<div style="background-color: blue;">
						<div>
							<div style="float: left;">남자</div>
							<div style="float: left; width: 20px;">
								<input type="radio" name="gender" id="gender"
									class="form-control" value="남자" />
							</div>
						</div>

						<div>
							<div style="float: left;">여자</div>
							<div style="float: left; width: 20px;">
								<input type="radio" name="gender" id="gender"
									class="form-control" value="여자" />
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- phone -->
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>Phone</label>
				</div>
				<div class="form-group1" style="width: 230px; float: left;"
					align="left">
					<input type="text" name="phone" id="phone" class="form-control"
						placeholder="Ex) 01012345678" pattern="[0-9]{10}[0-9]?"
						title="'-'를 뺀 휴대전화 번호 10~11자리를 입력해주세요." required />
				</div>
				<form:errors path="phone" cssClass="error" />
			</div>

			<!-- nickname -->
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>nickname</label>
				</div>
				<div class="form-group1" style="float: left;" align="left">
					<input type="text" name="nickname" id="nickname"
						class="form-control" placeholder="Enter Your E-Mail" required />
				</div>
				<form:errors id="nickname" cssClass="error" />
			</div>

			<!-- address -->
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>address</label>
				</div>
				<div class="form-group1" style="float: left;" align="left">
					<input type="text" name="address" id="address" class="form-control"
						placeholder="Enter Your E-Mail" required />
				</div>
				<form:errors id="address" cssClass="error" />
			</div>



			<!-- birth -->
			<div class="form-group1" align="left">
				<div class="form-group1" style="width: 240px; float: none;"
					align="left">
					<label>B-day</label>
				</div>
				<div class="form-group1" style="width: 230px; float: left;"
					align="left">
					<input type="text" name="bday" id="bday" class="form-control"
						size="20" required />
				</div>
				<form:errors path="bday" cssClass="error" />
			</div>

			<div style="width: 80px;">
				<button type="submit" class="btn btn-primary btn-block">join</button>
			</div>
		</form>
	</div>
</body>
</html>
