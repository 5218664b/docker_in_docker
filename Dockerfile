# 指定创建的基础镜像
FROM ubuntu:18.04
 
 # 作者描述信息
MAINTAINER alpine_sshd_service
 
# 替换阿里云的并更新源、安装openssh 并修改配置文件和生成key 并且同步时间
RUN apt update
RUN apt install curl -y
RUN curl -sSL https://get.docker.com | sh

#RUN docker volume create portainer_data

#RUN docker run -d -p 9000:9000 -p 8000:8000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

# 开放22端口
EXPOSE 9000
 
# 容器启动时执行ssh启动命令
CMD ["/bin/bash"]
