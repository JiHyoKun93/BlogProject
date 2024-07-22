<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로그래머의 꿈</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/profile/profile.css"/>
<style type="text/css">

	header{
		position: unset !important;
	}
	
</style>
</head>

<body class="resume resume-view" style="margin: auto">
	<div class="resume-view-wrapper">
		<div class="resume-view-container">
		
			<div class="resume-subject" style="margin-top: 100px; font-size: 20px;">새로운 도전을 즐기며 발전하는 신입 개발자, 
			<span style="font-weight: 600; font-size: 25px; padding: 0 3px;">지효근</span> 입니다.</div>

			<div class="base profile image">
				<div class="container">
					<div class="photo">
						<img name="user_photo"
							src="https://imgs.jobkorea.co.kr/img1/user_photo/photo/2023\12\01\JK_GG_6VE69O23120115364161.jpg">
					</div>
					<div class="info-container">
						<div class="info-general">
							<div class="item name">지효근</div>
							<div class="item sex">남</div>
							<div class="item year">1993년</div>
							<div class="item age">(만 31세)</div>
						</div>
						<div class="info-detail">
							<div class="item">
								<div class="label">휴대폰</div>
								<div class="value">010-5042-3828</div>
							</div>
							<div class="item">
								<div class="label">Email</div>
								<div class="value">
									<a href="mailto:pingkkk@naver.com">pingkkk@naver.com</a>
								</div>
							</div>
							<div class="item item-full">
								<div class="label">주소</div>
								<div class="value">경기 안산시 단원구 초지동</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<input type="hidden" id="hidAplctName" value="지효근">
			<div class="base education">
				<h2 class="header">학력</h2>
				<div class="list list-education">
					<div class="item">
						<div class="date">
							<div class="term">2011. 03 ~ 2016. 02</div>
							<div class="state">졸업</div>
						</div>
						<div class="content">
							<div class="content-header">
								<div class="name">혜전대학교</div>
								<div class="line">전자CAD과</div>
							</div>
							<div class="content-body">
								<div class="info"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="base career">
				<div class="headers">
					<h2 class="header" style="width: 50px;">경력</h2>
					<div class="term">
						<div class="total">총 2년 11개월</div>
					</div>
				</div>
				<div class="list list-career">
					<div class="item">
						<div class="date">
							<div class="term">2018. 01 ~ 2018. 08</div>
							<div class="term-calculator">8개월</div>
						</div>
						<div class="content">
							<div class="content-header">
								<div class="name">KMT(케이엠티)</div>

								<div class="is-private"></div>
								<div class="position"></div>
							</div>
							<div class="content-body">
								<div class="description">전자 회로 설계 및 제작</div>
								<div class="info">
									<div class="item">
										<div class="label">주요직무</div>
										<div class="value">PCB</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="date">
							<div class="term">2015. 09 ~ 2017. 11</div>
							<div class="term-calculator">2년 3개월</div>
						</div>
						<div class="content">
							<div class="content-header">
								<div class="name">(주)팬도</div>

								<div class="is-private"></div>
								<div class="position"></div>
							</div>
							<div class="content-body">
								<div class="description">전자 회로 설계 및 제작</div>
								<div class="info">
									<div class="item">
										<div class="label">주요직무</div>
										<div class="value">PCB</div>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
			<div class="base learn">
				<h2 class="header">교육</h2>
				<div class="list list-learn">
					<div class="item">
						<div class="date">2023. 05 ~ 2023. 10</div>
						<div class="content">
							<div class="content-header">
								<div class="name">프로젝트 기반 자바 웹 개발자 양성 과정</div>
								<div class="agency">아이티윌</div>
							</div>
							<div class="content-body">
								프로젝트 기반 자바 핀테크 웹 개발자 양성과정<br>Java와 Oracle DB를 사용하여 콘솔프로젝트 -
								쿠팽(쿠팡 참고 쇼핑몰)<br>Web에 대한 이해를 하기위해 Java-Servlet을 이용하여 세미프로젝트
								- EggPlant(은행업무시스템) 개발<br>Spring을 진행하기전 Struts1, 2를 진행하여
								Web에대한 이해를 높였습니다.<br>Spring Boot를 이용한 파이널 프로젝트 - GATCHI
								(위치기반 모임 서비스) 개발을 하였습니다.
							</div>
						</div>
					</div>
					<div class="item">
						<div class="date">2022. 10 ~ 2023. 04</div>
						<div class="content">
							<div class="content-header">
								<div class="name">C#과 유니티 교육과정</div>
								<div class="agency">SBS아카데미게임학원</div>
							</div>
							<div class="content-body">C#의 기본 문법과 개념을 이해하고, 유니티를 이용한 게임
								오브젝트의 생성과 제어, 애니메이션 및 사용자 입력 처리 등 다양한 기능을 학습하였고 유니티의 다양한 컴포넌트와
								기능을 활용하여 게임의 시각적인 효과로 간단한 게임을 제작할 수 있습니다.</div>
						</div>
					</div>
					<div class="item">
						<div class="date">2022. 03 ~ 2022. 10</div>
						<div class="content">
							<div class="content-header">
								<div class="name">프로그래밍 언어</div>
								<div class="agency">SBS아카데미게임학원</div>
							</div>
							<div class="content-body">
								C/C++ 을 통해 프로그래밍 언어를 학습하였고<br>다양한 알고리즘과 자료 구조를 학습하여 이를 실제
								문제에 적용하며 문제 해결 능력을 향상시켰습니다.<br>알고리즘 문제를 풀이하는 과정에서는 문제를 이해하고
								분석하여 적절한 알고리즘을 선택하고, 코드로 구현하는 능력을 키웠습니다.<br>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="base certificate">
				<h2 class="header">자격증</h2>
				<div class="list list-certificate">
					<div class="item pdf-page-break">
						<div class="date">2023. 10</div>
						<div class="content">
							<div class="content-header">
								<div class="name">SQL 개발자</div>
								<div class="agency">한국데이터산업진흥원</div>
							</div>
						</div>
					</div>
					<div class="item pdf-page-break">
						<div class="date">2023. 08</div>
						<div class="content">
							<div class="content-header">
								<div class="name">정보처리산업기사(필기)</div>
								<div class="agency">한국산업인력공단</div>
							</div>
						</div>
					</div>
					<div class="item pdf-page-break">
						<div class="date">2022. 02</div>
						<div class="content">
							<div class="content-header">
								<div class="name">1종대형운전면허</div>
								<div class="agency">경찰청(운전면허시험관리단)</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<input data-val="true" data-val-required="ThreeLineStat 필드가 필요합니다."
				id="ThreeLineStat" name="ThreeLineStat" type="hidden" value="False">
			<div class="base introduction">
				<h2 class="header">자기소개서</h2>
				<div id="SummaryAjax"></div>
				<ul class="list list-introduction">
					<li class="item">
						<div class="header">지속적인 학습과 높은 적응력</div>
						<div class="content" id="pfl_original">
							개발자가 되기 위해 처음 공부한 분야는 게임 개발로 언어 공부와 알고리즘 문제 해결을 통해 기초를 탄탄히 다지며
							개발에 점차 익숙해졌고 이후 웹 개발과 전문적인 교육 과정에 관심이 생겨 국비 지원 교육을 받게 되었고 프로젝트 기반
							과정으로 3개의 팀 프로젝트를 진행하였으며 웹 개발에 대한 이해도와 능력을 향상하는 동시에, 협업과 커뮤니케이션
							능력도 함께 키워나갔으며, 프로젝트 진행 중에도 부딪히는 문제에 대한 접근법을 찾아내기 위해 적극적으로 노력하여 작동
							원리와 기능을 이해하고 적용하는 것을 중요하게 여겼습니다.<br>또한 학원 수업을 받기 전 선행 학습이 된
							상태로 교육을 받게 되어 새로 배우는 기술에 대해 거부감이 없어 학습 능력이 뛰어났고 이를 바탕으로 주변 동료들에게
							제 지식을 전파하면서 다시 한번 복습을 통해 기초를 다졌습니다.<br>이처럼 탄탄한 기초를 통하여 빠른
							학습을 통해 보다 빨리 실무에 투입할 수 있는 장점이 있습니다.
						</div>
					</li>
					<li class="item">
						<div class="header">끊임없는 발전과 새로운 모습으로</div>
						<div class="content" id="pfl_original">
							IT 업계는 끊임없는 혁신과 새로운 기술의 등장으로 인해 변화가 빠르며, 개발자로서는 지속적인 학습과 노력이
							필요합니다. 이러한 도전적인 면모가 제게 큰 매력으로 다가왔고, 그 결과로 저는 새로운 분야로의 도전을 결심하게
							되었습니다.<br>비록 전공이 아니고 늦은 나이에 시작하더라도, 배움을 게을리하지 않고 끊임없이 노력하는
							자세를 가지기로 마음먹었습니다. 진정한 전문가로서 성장하려면 성실함과 지속적인 학습에 노력하는 태도가 필수라고
							믿습니다.<br>새로운 분야에서의 도전은 힘들기도 하지만, 노력과 열정으로 어려움을 극복할 수 있다고
							믿습니다. 어떤 시점에서든 학습과 성장이 가능하며, 자신의 잠재력을 계속해서 발전시킬 수 있다는 자신감을 가지고
							있습니다. 게다가 다양한 배경을 가진 사람으로서 기존의 관점과는 다른 시선으로 문제를 해결하고 혁신적인 아이디어를
							제시할 수 있는 장점도 있다고 자부합니다.<br>마지막으로, 끊임없는 성장을 위한 여정에서 낮은 자세로
							배움에 임하는 신입 사원이 되어 회사에 필요한 인재가 되고자 합니다. 성실함과 배움에 대한 열정을 바탕으로, 더 높은
							목표를 향해 나아가고자 하는 것이 제 마음가짐 입니다.<br>
						</div>
					</li>
					<li class="item">
						<div class="header">유연한 문제 해결로 목표를 달성하겠습니다.</div>
						<div class="content" id="pfl_original">
							저는 이전 회사에서 갑작스럽게 몰린 업무를 유연하게 대처한 경험이 있습니다.<br>당시 저는 PCB
							회로설계를 하는 업무였고, 하루에 1~2건의 업무를 진행 하고 있었습니다.<br>하지만 큰 계약이 성사되면서
							10건이상을 일주일 내로 처리해야 되는 상황이 발생하였고<br>여러 업체들이 연계되어 있어 마감일 조정이
							불가능한 상황이었고, 제한된 기간 내에 모든 업무를 완료해야 했었기 때문에 체계적으로 진행 하였습니다.<br>첫
							번째로, 업무들의 우선순위를 정하고 검토 파일을 전달하였습니다. 업무들의 난이도와 중요도를 고려하여 쉬운 업무부터
							처리하고, 업체들이 검토를 진행하는 동안에도 다른 업무를 동시에 진행하였습니다. 업체에 검토 파일을 보내기 전에는
							부품 배치도를 꼼꼼히 검토하며 불량품을 방지하기 위해 데이터시트를 자세히 분석하고 예상 배치도를 여러 개
							제시하였습니다.<br>두 번째로, 배치도가 확정되기 전에 큰 그림을 선제적으로 그렸습니다. 업체들이 배치도를
							검토하는 동안에는 회로 연결 방식을 밑작업으로 준비해 업체의 확정을 받으면 즉시 작업에 들어갈 수 있도록 사전 준비를
							통해 시간을 단축하였습니다.<br>이러한 접근법으로 모든 업체의 업무를 마감일 내에 성공적으로 처리하였고
							불량품도 발생하지 않았습니다.<br>
							<br>저는 이 경험을 통해 문제 상황에 대한 신속하고 체계적인 대응 방법을 배웠습니다. 더 나아가, 입사
							후에도 어떠한 어려운 상황이라도 우선순위를 정하고 효율적인 방법으로 문제를 해결할 수 있도록 노력하겠습니다. 문제해결
							능력을 바탕으로 조직의 성과 향상에 기여하고 끊임없이 발전하는 개인이 되고자 합니다.<br>
						</div>
					</li>
				</ul>
			</div>

			<div class="base jobpreference">
				<h2 class="header">취업우대사항</h2>
				<table class="table table-special">
					<caption>
						<span class="skip">취업우대사항</span>
					</caption>
					<colgroup>
						<col style="width: 149px;">
						<col style="width: 165px;">
						<col style="width: 153px;">
						<col style="width: 160px;">
						<col style="width: 153px;">
						<col style="width: 160px;">
					</colgroup>
					<tbody>
						<tr>
							<th>보훈대상 여부</th>
							<td>-</td>
							<th>취업보호대상 여부</th>
							<td>-</td>
							<th>고용지원금대상 여부</th>
							<td>-</td>
						</tr>
						<tr>
							<th>병역사항</th>
							<td colspan="3">[군필] 2012. 08 ~ 2014. 05 육군 병장 제대</td>
							<th>장애여부</th>
							<td>-</td>

						</tr>
					</tbody>
				</table>
			</div>
			<div class="base hopework" id="js-hopeworkAnchor">
				<h2 class="header">희망근무조건</h2>
				<table class="table table-hopework">
					<caption>
						<span class="skip">희망근무조건</span>
					</caption>
					<tbody>
						<tr>
							<th scope="row">고용형태</th>
							<td>정규직</td>
						</tr>
						<tr>
							<th scope="row">희망근무지</th>
							<td>서울전지역, 경기전지역</td>
						</tr>
						<tr>
							<th scope="row">희망연봉</th>
							<td>면접 후 결정</td>
						</tr>
						<tr>
							<th scope="row">지원분야</th>
							<td>
								<div class="content is-label">
									<div class="item">
										<div class="label">직무</div>
										<div class="value">
											<ul class="list-hopework">

												<li>
													<div class="item">웹개발자</div>

												</li>

											</ul>
										</div>
									</div>
								</div>

							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="sign">
				<div class="message">위의 모든 기재사항은 사실과 다름없음을 확인합니다.</div>

				<div class="writer">작성자 : 지효근</div>
				
				<div class="resume subject" style="font-size: 15px; align-content: center; margin-top: 10px;"> 
			<p style="text-align: center">본 페이지는 잡코리아 이력서 양식을 활용 하였습니다</p> 
		</div>
			</div>

		</div>
	</div>
	</div>
	<script type="text/javascript">
		let me = document.querySelector('[data-menu="PROFILE"]');
		me.classList.add('on');
	</script>
</body>
</html>