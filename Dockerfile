# 1. 베이스 이미지 설정 (OpenJDK 17 사용)
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

# 2. 애플리케이션 Jar 파일을 위한 작업 디렉토리 설정
WORKDIR /app

# 3. 프로젝트에서 빌드된 Jar 파일을 Docker 이미지에 복사
COPY target/cloudsample-0.0.1-SNAPSHOT.jar /app/cloudsample-0.0.1-SNAPSHOT.jar


# 4. 컨테이너가 시작되면 실행할 명령어 정의
#ENTRYPOINT ["java", "-jar", "/app/cloudsample-0.0.1-SNAPSHOT.jar"]

# 5. 기본 포트 설정 (Spring Boot 기본 포트 8080)
EXPOSE 8080