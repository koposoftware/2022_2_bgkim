# 한큐에 끝나는, 원큐웨딩

[프로젝트 홈페이지 - https://koposoftware.github.io/2022_02_bgkim/](https://koposoftware.github.io/2022_02_bgkim/)

# 1. 프로젝트 개요

### 프로젝트 개요
* 디지털 금융 시대에 오프라인 서비스들이 디지털로 전환되고 있다.
* 한 해에 결혼식장에서 발생하는 9625억원의 현금 유동성을 디지털로 전환하여 사용자에게 편리함을 주는 금융 플랫폼을 개발한다.

### 프로젝트 목적
* 결혼식장에서 활용 가능한 미디어 기술을 접목시킨 간편 결제 시스템 및 하객 관리 시스템 구축

 
<br>

# 3. 프로젝트 결과

## 발표 ppt 
[발표자료<img src="Img/최종ppt.png"/>](/files/최종프로젝트ppt.pdf)<br>

## 시연 동영상 
  [![영상](Img/영상사진.png)](https://youtu.be/SjWqHlg7PG8)


# 4. 프로젝트 요약
### 1) 프로젝트 기간 (2022-09-16 ~ 2022-10-25)

### 2) 주요기능
**<손님>**
<img src="Img/손님.png"/><br>

**<상담사>**
<img src="Img/상담사.png"/><br>

### 3) 사용기술

 - spring을 활용한 웹 애플리케이션 제작
 - spring을 활용한 websocket 구성
 - websocket를 통한 실시간 데이터 전송
 - webRTC를 활용한 미디어 스트리밍
 - JavaMailSender, coolsms, ClovaOCR을 통한 본인 인증
 - HIGHCHARTS를 통한 데이터 시각화
 - FullCalendar를 통한 예약 일정 관리

### 4) 개발환경

* OS : window10
* Language : Java(1.8), HTML, CSS, Jacascript
* Server : Apache Tomecat 9.0
* Framework : Spring, Mybatis, Bootstrap
* DB : Oracle19c
* Tool : STS, Sqldeveloper
* Etc : Git

### 5) 시스템 아키텍쳐

<img src="Img/아키텍쳐.png"/><br>

### 6) ERD

   <img src="Img/최종_ERD.png"/><br>

### 7) 보완점

* WebRTC는 HTTP 서버를 사용하게 되면 카메라 권한을 가져올 수 없다(보안 때문에)<br>
   -> SSL을 적용해서 HTTPS 적용은 하였지만 인증서가 유효X<br>
   -> 신뢰기관 인증서를 구입하면 더 좋을 것이다
* 본인 확인 시 KYC인증 등 신뢰성 있는 인증 필요
* 상담 후기 및 상담 내역을 통한 실적 관리
* 화상기능 미지원 브라우저(IE 등) 사용 시 안내 메시지 


# 5. 본인 소개

본인 소개를 추가하세요

|이름 |김 병 관|![BGKIM](/Img/사진.jpg)|
|연락처 | 202260341002(@)office.kopo.ac.kr| |
|skill set| Frontend - HTML, CSS, Javascript, React, Next.js, TailwindCSS| |
| | Backend - Java, Spring boot, Oracle, Node.js, cloud| |
|자격증| SQLD(2022년) | |
|수상| 2022년 제6회 벤처창업아이템경진대회-입선<br>(고용노동부 후원)  | |
| | 2022년 교내 프로젝트작품 경진대회-금상| |
|경력사항|  광주은행 인턴(2021.01 - 2021.02) | |
|특기사항|  FIFAONLINE 수준급 실력 | |
|| LeageOfLegends 8년째 꾸준히 노력 중  | |

