# 한큐에 끝나는, 원큐웨딩

[프로젝트 홈페이지 - https://koposoftware.github.io/2022_2_bgkim/](https://koposoftware.github.io/2022_2_bgkim/)

# 1. 프로젝트 개요

### 프로젝트 개요
* 본 프로젝트는 미디어 기술을 접목시킨 금융 결제 플랫폼을 구현한 결혼식장에서 활용 가능한 금융 결제 플랫폼 프로토타입(1Q Wedding)의 결과입니다. 
1Q Wedding은 결혼식의 주최인인 신랑, 신부 그리고 하객들을 위한 웹앱 서비스입니다. 
신랑, 신부에게는 소속별 하객 관리 및 축의금 관리 기능을 제공하고 HighChart를 활용하여 시각화한 데이터 통계 결과를 제공합니다. 
하객에게는 QR코드를 통한 계좌 이체 기능 및 신용카드를 이용한 축의금 결제 기능을 제공한다. 모바일 환경에서 React Webcam을 통해 구현한 동영상 촬영 저장 및 업로드 서비스를 통해 축하 영상을 촬영하여 전송할 수 있고 영상 대신 자필 메시지를 남기고 싶은 유저들을 위한 React canvas 기능을 제공합니다.
클라우드 서비스인 Cloudflare R2를 활용하여 대용량의 파일 업로드, 다운로드 api를 구현하여 제공합니다. 신랑, 신부측에서는 Oracle Cloud 환경에서 DB Link 기술로 구현한 오픈 뱅킹 서비스를 이용할 수 있습니다. 
관리 페이지 내에서 알림 기능과 CoolSMS 문자 서비스 및 WebSocket 채팅 서비스 등 부가 서비스를 제공합니다.


### 프로젝트 목적
* 핀 테크 기술이 발달하여 1초만에 송금을 할 수 있는 세상이 됐음에도 불구하고, 결혼식장이라는 공간에 들어서기만 하면 하객들은 ATM 기에서 현금을 뽑느라 ATM기 앞에 긴 줄을 섭니다.
또한, 하객들은 결혼식장에 단순히 직접 방문했음을 증명하는 자신의 이름을 종이로 된 방명록에 적고, 신랑 신부 측은 하객이 얼마의 축의금을 냈는지를 종이로 된 기록장에 기록합니다.
저는 이러한 현상에 큰 문제의식을 갖고 있었습니다. 왜냐하면 현대시대는 핀테크 기술이 금융시장에서 점차 영향력을 키워가고 있으며, 1초면 큰 돈을 송금할 수 있는 금융 송금 시스템 인프라가 구축된 시대이기 때문입니다. 이러한 시대에서 결혼식장이라는 큰 돈의 송금이 일어나는 공간에서 아직도 이러한 구시대적인 방식으로 돈을 송금하는 것은 내가 아니어도 언젠가 누군가가 해결해야 할 문제라고 생각했습니다. 


### 프로젝트 논문
* 한국실천공학교육학회 등재 예정 - 결혼식장에서 활용 가능한 미디어 기술을 접목시킨 금융 결제 플랫폼 프로토타입(1Q Wedding) 개발<br>
[하나원큐웨딩_논문.pdf](https://github.com/koposoftware/2022_2_bgkim/files/9853649/_.pdf)


<br>

# 3. 프로젝트 결과


## 발표 ppt 



## 시연 동영상
[![하나원큐웨딩](/assets/하나원큐웨딩썸네일.png)](https://youtu.be/cmJViuk3K8k)


# 4. 프로젝트 요약
### 1) 프로젝트 기간 (2022-09-16 ~ 2022-10-25)


### 2) 주요기능
[신랑, 신부]
- 축의금 관리 시스템
- 축의금 데이터 시각화
- 축의금 즉시 환송기능
- 축하메시지 보기 기능


### 3) 사용기술
 - Spring boot 환경에서 웹 애플리케이션 개발
 - Oracle Cloud, DB Link를 활용한 오픈 뱅킹 서비스 구현
 - WebSocket 프로토콜을 활용한 채팅 기능 구현
 - KakaoPay API를 활용하여 간편 결제 시스템 구현
 - HighChart를 통한 데이터 시각화
 - CoolSMS를 활용한 웹 발신 메시지 전송 기능 구현
 - React 기반의 SPA 구현
 - react-webcam을 활용한 영상 편지 기능 구현
 - react-canvas를 활용한 자필 편지 기능 구현
 - API fetch protocol을 이용한 Cloudflare R2에 대용량 비디오, 이미지 파일 업로드 기능 구현


### 4) 개발환경
* OS : window11
* Language : Java(1.8), HTML, CSS, Jacascript, TypeScript
* Server : Apache Tomecat 9.0, Node.js
* Framework : Spring, Mybatis, Bootstrap, React
* DB : Oracle19c, Cloudflare R2
* Tool : Eclipse, Sqldeveloper
* Etc : Git, Vercel


### 5) 시스템 아키텍쳐
<img width="303" alt="image" src="https://user-images.githubusercontent.com/52727682/197578507-5d1e8953-44f4-455a-b042-f58558829396.png">


### 6) ERD
<img width="303" alt="image" src="https://user-images.githubusercontent.com/52727682/197578577-6dd10886-d1f4-4db7-9234-217249850f3a.png">


### 7) 기대 효과
-	하나금융 플랫폼에 1Q Wedding을 통해 축의금을 송금할 경우 연간 수 천억원의 현금흐름을 발생시킬 수 있다.
-	결혼식 뿐만 아니라, 돌잔치, 장례식 등의 축의금과 부조금을 주고받는 문화가 존재하는 모든 곳에 1Q Wedding와 같은 구조의 웹 서비스가 도입될 경우 하나금융 플랫폼에 수 천억원의 현금흐름을 발생시킬 수 있다.
-	편리하게 축의금을 송금하며 효과적으로 진심을 디지털 컨텐츠로 전송할 수 있는 1Q Wedding을 사용하지 않는 고객들이 하나금융 플랫폼에 신규 가입하도록 할 수 있는 동기를 부여하여 하나금융 신규 계좌 개설 수를 효과적으로 늘릴 수 있다.


### 8) 보완점
-	웹 서비스 기반 프로젝트인 1Q Wedding은 결국엔 모바일 앱 기반 프로젝트로 나아가야 하기 때문에 프로젝트를 앱 기반으로 변경해야 할 부분이 보완점으로 남아있다.



# 5. 본인 소개

|이름 |김 병 관|![profile](/assets/profile.jpg)|
|연락처 | 202260341002@office.kopo.ac.kr| |
|Language & Tools| Language - java, javaScript, python, R, HTML/CSS| |
| | Framework - React, Spring boot| |
| | Tool - STS, SQL Developer| |
|Database| Oracle| |
|Etc| Git| |
|자격증| 정보처리기사(2021년 06월 16일) | |
| | SQLD(2021년 06월 25일) | |
| | ADsP(2021년 04월 09일) | |
| | 생활체육보디빌딩지도자 2급(2021년 08월 06일) | |
| | 수상인명구조요원(2018년 11월 18일) | |
|수상| 2022년 제6회 벤처창업아이템경진대회-동상 확정<br>(고용노동부 후원)  | |
| | 2022년 광명융합기술교육원 최종 프로젝트 경진대회-동상| |
|경력사항|  아주대학교 경영정보시스템 조교(2020.09 - 2020.12) | |
| |  아주대학교 ICT 전략 및 기획 조교(2020.09 - 2020.12) | |
| |  수상도시개발 인명구조요원(2019.03 - 2022.08) | |

