<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/templatemo-style.css" rel="stylesheet">
</head>
<body>
	<!-- Left column -->
	<c:import url="../module/left.jsp"/>
	<!-- top column -->	
	<c:import url="../module/top.jsp"/>
		
			<!-- Main content -->
			<div class="templatemo-content-container row">
				<div class="templatemo-content-widget white-bg" style="min-height: 650px;">
					<h2 class="margin-bottom-10">사업자 정보 등록</h2>
					<hr>
					<!-- main start -->
					<form class="templatemo-login-form" action="${pageContext.request.contextPath}/branch_owner_insert_pro" method="post">
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputFirstName">지점 대표 코드</label> 
								<input type="text" class="form-control" id="branch_owner_cd" name="branch_owner_cd" >
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputFirstName">사업자 번호</label> 
								<input type="text" class="form-control" id="owner_num" name="owner_num" >
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputUsername">사업자명</label> 
								<input type="text" class="form-control" id="owner_nm" name="owner_nm" >
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputLastName">지점 접속 아이디</label> 
								<input type="text" class="form-control" id="branch_owner_id" name="branch_owner_id" placeholder="숫자와 영문 조합 4~15자리">
								<font name="id_check" size="2" color="red"></font>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputNewPassword">비밀번호</label> 
								<input type="password" class="form-control" id="branch_owner_pw" name="branch_owner_pw">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputConfirmNewPassword">비빌번호 확인</label> 
								<input type="password" id="pw_confirm" class="form-control" id="inputConfirmPassword">
								<font name="pw_check" size="2" color="red"></font>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label>사업자 주소</label>
								<input type="text" class="form-control" id="branch_owner_postcode"  name="branch_owner_postcode" placeholder="우편번호"><div style="height: 10px;"></div>
								<input type="text" id="branch_owner_addr" name="branch_owner_addr" class="form-control" placeholder="주소">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label>&nbsp;</label>
								<input style="width: 150px;" type="button" class="form-control" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><div style="height: 10px;"></div>
								<input type="text" id="branch_owner_detail_addr" name="branch_owner_detail_addr" class="form-control"  placeholder="상세주소"/>
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label>사업자 연락처</label> 
								<input type="text" class="form-control" id="branch_owner_tel" name="branch_owner_tel">
							</div>
						</div>

						<hr>
						
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label>지점명</label> 
								<input type="text" class="form-control" id="branch_nm" name="branch_nm" >
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputEmail">지점 연락처</label> 
								<input type="text" class="form-control" id="branch_tel" name="branch_tel" >
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<div style="height: 30px;">&nbsp;</div>
								<div class="margin-right-15 templatemo-inline-block">
									<input type="checkbox" name="tel_chk" id="tel_chk" value="">
									<label for="c3" class="font-weight-400"><span></span>사업자 연락처와 동일</label>
								</div>
							</div>
						</div>
						<div class="row form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label for="inputConfirmNewPassword">지점 주소</label>
								<input type="text" class="form-control" id="branch_postcode"  name="branch_postcode" placeholder="우편번호"><div style="height: 10px;"></div>
								<input type="text" id="branch_addr" name="branch_addr" class="form-control" placeholder="주소">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label>&nbsp;</label>
								<input style="width: 150px;" type="button" class="form-control " 
								onclick="sample7_execDaumPostcode()" value="우편번호 찾기"><div style="height: 10px;"></div>
								<input type="text" id="branch_detail_addr" name="branch_detail_addr" class="form-control"  placeholder="상세주소">
							</div>
							<div class="col-lg-6 col-md-6 form-group">
								<label class="control-label templatemo-block">파일첨부</label>
								<!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
								<input type="file" id="fileToUpload" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false">
								<small><p>5MB 이하로만 첨부 가능합니다.</p></small>
							</div>
						</div>
						<hr>
						<div class="form-group text-right">
							<button type="submit" class="templatemo-blue-button">Submit</button>
							<button type="reset" class="templatemo-white-button">Reset</button>
						</div>
					</form>
					<!-- main end -->
				</div>
	
				<c:import url="../module/footer.jsp"/>
			</div>
		</div>
	</div>

	<!-- JS -->
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-filestyle.min.js"></script>
	<!-- http://markusslima.github.io/bootstrap-filestyle/ -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
	
	<!-- 주소 API -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = ''; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수
	
	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    fullAddr = data.roadAddress;
	
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    fullAddr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                if(data.userSelectedType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('branch_owner_postcode').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('branch_owner_addr').value = fullAddr;
	
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('branch_owner_detail_addr').focus();
	            }
	        }).open();
	    }
	</script>
	<script>
	    function sample7_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullAddr = ''; // 최종 주소 변수
	                var extraAddr = ''; // 조합형 주소 변수
	
	                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    fullAddr = data.roadAddress;
	
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    fullAddr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
	                if(data.userSelectedType === 'R'){
	                    //법정동명이 있을 경우 추가한다.
	                    if(data.bname !== ''){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있을 경우 추가한다.
	                    if(data.buildingName !== ''){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
	                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('branch_postcode').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('branch_addr').value = fullAddr;
	
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById('branch_detail_addr').focus();
	            }
	        }).open();
	    }
	</script>
	<!-- 주소 API end-->
	
	<script type="text/javascript">
	$(document).ready(function(){
		var idchk= /^[a-zA-Z0-9]{4,15}$/;
		$('#branch_owner_id').keyup(function(){
			$('font[name=id_check]').text('');
			if(!idchk.test($.trim($("#branch_owner_id").val()))){
				$('font[name=id_check]').text('');
				$('font[name=id_check]').html("아이디가 적절하지 않습니다.");
			}else{
				$('font[name=id_check]').text('');
			}
		});
		
		$('#branch_owner_pw').keyup(function(){
			 $('font[name=pw_check]').text('');
		});
		$('#pw_confirm').keyup(function(){
			if($('#branch_owner_pw').val()!=$('#pw_confirm').val()){
			 $('font[name=pw_check]').text('');
			 $('font[name=pw_check]').html("비밀번호가 일치하지 않습니다");
			}else{
			 $('font[name=pw_check]').text('');
			}
		});
	});
	</script>
</body>
</html>
