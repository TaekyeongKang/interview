<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn').on('click', function(){
			answer = "안녕하세요. 저는 삼성전자에 지원하게된 홍길동입니다.저는 마케팅의 여러분야 중에서도 퍼포먼스 마케팅에 상당한 지식을 쌓아왔습니다."
			answer += "업계에는 유능한 마케터가 많습니다. 하지만 저는 그들과 저를 차별화시킬 구체적 경험을 갖고있습니다. 저는 페이스북과 인스타, 그리고 GA를 연동하여 실제 캠페인을 성공시킨 경험이 있습니다."
			answer += " 서울권 대학생을 위한 사회 공헌 티셔츠 판매에서 평균 로사 450 퍼센트 달성했고, 브랜드 인지도를 5배 확대시켰습니다. 저는 삼성전자가 필요로 하는 디지털 마케팅 역량 강화에 상당한 기여를 할 수 있다고 생각합니다. "
			answer += "개인 맞춤형 상품은 타멕 고객의 세분화된 니즈에 대응되어야 합니다. 하지만 회사는 현재 오프라인 판매에 집중되어 있습니다. 만일 데이터 기반 트래킹을 보완한다면 회사의 시장 점유는 크게 증가할 것입니다. 제가 그 일을 성공시키고 싶습니다."			
			
			document.location="${cp}/answer/language?answer="+answer;
		})
		
	})
</script>
</head>
<body>
	<input type="button" id="btn" value="언어분석">
</body>
</html>