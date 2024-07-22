<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>JHG Page</title>
<c:import url="/WEB-INF/views/jsp/structure/thumbnail.jsp" />
<c:import url="/WEB-INF/views/jsp/structure/header.jsp" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/common.css" />


<style type="text/css">

	.sub_text{
		font-size: 20px;
    	padding: 10px;
	}

</style>
</head>
<body>
	<div style="text-align: center; margin: 250px 0px 100px 0px;">
		<p style="font-size: xxx-large; padding: 15px;">안녕하세요!</p>
		<p class="sub_text">귀중한 시간 내주셔서 감사합니다.</p>
		<p class="sub_text">상단 메뉴를 통해 프로필과 진행한 프로젝트를 보실 수 있습니다.</p>
		<p class="sub_text">아래는 간략한 프로젝트 소개 입니다.</p>
	</div>

<section id="products">
            <div class="section_title">
                <div>지속적인 학습을 통해<br>끊임없이 더 나은 방법을 고민하는 <b>지효근</b> 입니다. <br></div>
            </div>

            <a id="wrap_product_0"></a>
            <div id="product_waldbow" class="product_wrap">
                <div class="product_description">
                    <div class="product_worry">어질리티 독스포츠</div>
                    <div class="product_name">WALD BOW</div>
                    <div class="product_desc">
                        어질리티는 개와 사람이 한 팀을 이루어 정해진 장애물 코스를 완주하는 경기입니다.<br>
                        애완견 레포츠로서 개의 민첩성과 사람의 훈련 능력을 동시에 시험하는 경기라고 할 수 있습니다.<br>
                        매년 아주 큰 규모의 세계대회가 열릴 정도로 나날이 발전하고 있습니다<br><br>
                        
                        외국에는 유사한 사이트들이 많은데 한국에는 관리하는 툴이 없다 보니
                        훈련 소장님으로 부터 불편사항을 접수하여 보다 편하게 사용할 수 있도록 일부 기능만 서비스 중이며 아직 개발중입니다.
                        
                    </div>
                    <div class="product_btns">
                        <a href="https://waldbow.com/agilitymap.do">
                            <div class="product_btn">
                                <div>사이트 바로가기</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="product_screenshot">
                    <div class="main_wrap">
                        <img src="/resources/image/main/waldbow/waldbow_1.jpg">
                    </div>
                    <div class="sub_wrap">
                        <img src="/resources/image/main/waldbow/waldbow_2.jpg">
                        <img src="/resources/image/main/waldbow/waldbow_3.jpg">
                        <img src="/resources/image/main/waldbow/waldbow_4.jpg">
                    </div>
                </div>
            </div>

            <a id="wrap_product_1"></a>
            <div id="product_gatchi" class="product_wrap">
                <div class="product_screenshot">
                    <div class="main_wrap">
                        <img src="/resources/image/main/gatchi/gatchi_1.jpg">
                    </div>
                    <div class="sub_wrap">
                        <img src="/resources/image/main/gatchi/gatchi_4.png">
                        <img src="/resources/image/main/gatchi/gatchi_3.jpg">
                        <img src="/resources/image/main/gatchi/gatchi_2.jpg">
                    </div>
                </div>
                <div class="product_description">
                    <div class="product_worry">위치 기반 모임 서비스</div>
                    <div class="product_name">GATCHI</div>
                    <div class="product_desc">
                        현대 사회에서는 고립과 외로움이 더욱 심화되고 있습니다.<br>
                        특히 도시 생활에서는 많은 사람들의 미지의 이웃들과 소통할 기회가 부족합니다.<br>
                        이러한 문제를 해결하고 이웃 간의 친목을 형성할 수 있는 사이트를 개발하였습니다.
                        <br><br>
                        총 6명의 팀원과 41일간 진행 하였으며<br>
                        실시간 채팅방 및 각 모임 리스트 페이지, CSS 기능을 담당하였습니다.
                    </div>
                    <div class="product_btns">
                        <a href="http://jhgpage.com/project1.do">
                            <div class="product_btn">
                                <div>프로젝트 소개</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>

                        <a href="http://jhgpage.com/FinalProject">
                            <div class="product_btn">
                                <div>사이트 바로가기</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <a id="wrap_product_2"></a>
            <div id="product_eggplant" class="product_wrap">
                <div class="product_description">
                    <div class="product_worry">은행 업무 시스템</div>
                    <div class="product_name">EGG PLANT</div>
                    <div class="product_desc">
                        웹에 대한 이해 및 복습을 위해<br>
                        JSP와 ORACLE 데이터베이스를 사용하여<br>
                        기본적인 웹의 동작 방식을 공부한 프로젝트 입니다.  
						<br><br>
						총 6명의 팀원과 9일간 진행하였으며 이체 및 예약이체 기능을 담당하였습니다.
                    </div>
                    <div class="product_btns">
                        <a href="http://jhgpage.com/project2.do">
                            <div class="product_btn">
                                <div>프로젝트 소개</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                        <a href="http://jhgpage.com/semiProject/eggplant/main.do">
                            <div class="product_btn">
                                <div>사이트 바로가기</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="product_screenshot">
                    <div class="main_wrap">
                        <img src="/resources/image/main/eggplant/eggplant_4.jpg">
                    </div>
                    <div class="sub_wrap">
                        <img src="/resources/image/main/eggplant/eggplant_1.jpg">
                        <img src="/resources/image/main/eggplant/eggplant_2.jpg">
                        <img src="/resources/image/main/eggplant/eggplant_3.jpg">
                    </div>
                </div>
            </div>

            <a id="wrap_product_3"></a>
            <div id="product_cupeng" class="product_wrap">
                <div class="product_screenshot">
                   <div class="main_wrap">
                        <img src="/resources/image/main/cupeng/cupeng_1.jpg">
                    </div>
                    <div class="sub_wrap">
                        <img src="/resources/image/main/cupeng/cupeng_2.jpg">
                        <img src="/resources/image/main/cupeng/cupeng_3.jpg">
                        <img src="/resources/image/main/cupeng/cupeng_4.jpg">
                    </div>
                </div>
                <div class="product_description">
                    <div class="product_worry">쇼핑몰 콘솔 프로젝트</div>
                    <div class="product_name" style="letter-spacing: 0;">CUPENG</div>
                    <div class="product_desc">
                        JDBC의 이해를 위해 진행한 프로젝트로 <br>
                        Java와 Oracle 데이터베이스를 이용하여 쿠팡사이트를 참고한 콘솔 프로젝트 입니다.<br>
                        <br>
                        총 3명의 팀원과 5일간 진행 하였으며<br>
                        상품 리스트, 장바구니, 구매내역, 카드등록 기능을 담당했습니다.
                    </div>
                    <div class="product_btns">
                        <a href="http://jhgpage.com/project3.do">
                            <div class="product_btn">
                                <div>프로젝트 소개</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <a id="wrap_product"></a>
            <div id="product_infinity" class="product_wrap">
                <div class="product_description">
                    <div class="product_worry">하이퍼 캐쥬얼 킬링타임 게임</div>
                    <div class="product_name">Enfinity Ball</div>
                    <div class="product_desc">
                       	시간이 지날수록 좁아지는 벽과 빨라지는 공을 컨트롤 해야하는 집중력을 필요로 하는 게임
                        <br>출퇴근 및 화장실에서도 한손으로 간단하게 할 수 있는 게임<br><br>
                        Unity와 C#을 사용하여 제작한 개인 프로젝트 입니다.
                        
                    </div>
                    <div class="product_btns">
                        <a href="http://jhgpage.com/project4.do">
                            <div class="product_btn">
                                <div>프로젝트 소개</div>
                                <div>
                                    <svg viewBox="0 0 18 18">
                                        <path d="M17.7,8.3L10.5,1c-0.6-0.6-1.4-0.6-2,0l0,0c-0.6,0.6-0.6,1.5,0,2L13,7.5H1.5C0.7,7.5,0,8.2,0,9v0c0,0.8,0.7,1.5,1.5,1.5H13,L8.5,15c-0.6,0.6-0.6,1.4,0,2l0,0c0.6,0.6,1.4,0.6,2,0l7.2-7.3C18.1,9.3,18.1,8.7,17.7,8.3z"></path>
                                    </svg>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="product_screenshot">
                    <div class="main_wrap">
                        <img src="/resources/image/main/infinityball/infinity_1.jpg">
                    </div>
                    <div class="sub_wrap">
                        <img src="/resources/image/main/infinityball/infinity_2.jpg">
                        <img src="/resources/image/main/infinityball/infinity_3.jpg">
                        <img src="/resources/image/main/infinityball/infinity_4.jpg">
                    </div>
                </div>
            </div>
            
        </section>
        
</body>
</html>