# Apex Spring Boot Application

## 프로젝트 개요
Spring Boot 3.5.5를 사용한 RESTful API 애플리케이션입니다.

## 기술 스택
- **Java**: 21
- **Spring Boot**: 3.5.5
- **Spring Data JPA**: 데이터 접근 계층
- **Spring Security**: 보안
- **H2 Database**: 인메모리 데이터베이스 (개발용)
- **MySQL**: 프로덕션 데이터베이스
- **Maven**: 빌드 도구

## 프로젝트 구조
```
src/
├── main/
│   ├── java/com/apex/
│   │   ├── ApexApplication.java          # 메인 애플리케이션 클래스
│   │   ├── controller/                   # REST 컨트롤러
│   │   │   ├── UserController.java
│   │   │   └── HealthController.java
│   │   ├── service/                     # 비즈니스 로직
│   │   │   └── UserService.java
│   │   ├── repository/                   # 데이터 접근 계층
│   │   │   └── UserRepository.java
│   │   ├── model/                        # 엔티티 클래스
│   │   │   └── User.java
│   │   ├── config/                       # 설정 클래스
│   │   │   └── SecurityConfig.java
│   │   ├── exception/                    # 예외 처리
│   │   │   └── GlobalExceptionHandler.java
│   │   └── DataLoader.java              # 초기 데이터 로드
│   └── resources/
│       └── application.yml              # 애플리케이션 설정
└── test/
    ├── java/com/apex/
    │   └── ApexApplicationTests.java     # 테스트 클래스
    └── resources/
        └── application-test.yml         # 테스트 설정
```

## 실행 방법

### 1. 애플리케이션 실행
```bash
mvn spring-boot:run
```

### 2. 빌드 및 실행
```bash
mvn clean package
java -jar target/apex-1.0.0.jar
```

## API 엔드포인트

### 사용자 관리
- `GET /api/users` - 모든 사용자 조회
- `GET /api/users/{id}` - 특정 사용자 조회
- `POST /api/users` - 사용자 생성
- `PUT /api/users/{id}` - 사용자 수정
- `DELETE /api/users/{id}` - 사용자 삭제

### 헬스 체크
- `GET /api/health` - 애플리케이션 상태 확인

## 데이터베이스 접근
- H2 콘솔: http://localhost:8080/api/h2-console
- JDBC URL: `jdbc:h2:mem:testdb`
- Username: `sa`
- Password: `password`

## 개발 환경 설정
- 포트: 8080
- 컨텍스트 패스: `/api`
- 프로파일: `default`

## 테스트 실행
```bash
mvn test
```
