# 基于java镜像创建新镜像
FROM java:8

VOLUME /tmp
# 作者
MAINTAINER ikilig
# 将jar包添加到容器中并更名为app.jar
ADD  recruit-0.0.1-SNAPSHOT.jar recruit-0.0.1-SNAPSHOT.jar
EXPOSE 9091
# 运行jar包
ENTRYPOINT ["java","-jar","recruit-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=prod", "&"]