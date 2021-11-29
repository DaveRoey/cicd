FROM alpine:latest
#设置工作目录
WORKDIR /app/
#将服务器的go工程代码加入到docker容器中
ADD ./cicd ./
#暴露端口
EXPOSE 1323
#最终运行docker的命令
ENTRYPOINT  ["./cicd"]
