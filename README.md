# RentCar JSP application

중고차 판매·구매, 회원정보, 공지사항과 후기 CRUD를 연습하기 위한 JSP/Servlet MVC 프로젝트입니다.

## 실행 환경

- JDK 8 이상
- Apache Maven 3.8 이상
- Apache Tomcat 9 (`javax.servlet` 사용)
- MySQL 8

Tomcat 10 이상은 `jakarta.servlet` 네임스페이스를 사용하므로 이 프로젝트와 바로 호환되지 않습니다.

## 로컬 실행

1. MySQL을 `127.0.0.1:3307`에서 실행합니다.
2. MySQL 관리자 계정으로 `database/schema.sql`을 실행합니다.
3. `mvn clean package`를 실행합니다.
4. `target/rentcar.war`를 Tomcat 9의 `webapps` 폴더에 복사합니다.
5. Tomcat을 실행하고 `http://localhost:8080/rentcar/`에 접속합니다.

새 회원의 비밀번호는 PBKDF2 해시로 저장되고, 초기 데이터의 기존 평문 비밀번호도 첫 로그인 때 자동으로 해시로 전환됩니다. 테스트 로그인 정보는 공개 화면이나 문서에 표시하지 않습니다. `WebContent/META-INF/context.xml`의 DB 계정은 로컬 개발 전용입니다.

## 프로젝트 구조

- `WebContent`: JSP, CSS, 웹 설정
- `src/com/javalec/ex/frontcontroller`: 모든 `*.do` 요청을 처리하는 Front Controller
- `src/com/javalec/ex/CommandCar`: 요청별 Command
- `src/com/javalec/ex/Dao`: MySQL 접근 계층
- `src/com/javalec/ex/Dto`: 화면 전달 객체
- `database/schema.sql`: 복원된 스키마와 개발용 초기 데이터
