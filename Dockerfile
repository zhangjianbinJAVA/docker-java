#基础镜像
FROM openjdk:8-jdk-alpine

#作者
MAINTAINER "zhang <123@qq.com>"

# pom 中的参数
ARG JAR_FILE

# 环境变量
ENV PROFILE default

# 复制 jar
ADD target/${JAR_FILE} /opt/app.jar

# 容器暴露的端口
EXPOSE 8080

ENTRYPOINT java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -Duser.timezone=Asia/Shanghai -Dfile.encoding=UTF-8 -Dspring.profiles.active=${PROFILE} -jar /opt/app.jar