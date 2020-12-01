# 依赖tencent官方的tlinux镜像
FROM csighub.tencentyun.com/ccm/tangram-base:latest

# 设置工作区间
WORKDIR /data/web/swagger.ui.woa.com

# copy命令(静态资源)
COPY ./dist /data/web/swagger.ui.woa.com

# 拷贝nginx配置
COPY ./nginx/ /usr/local/services/tnginx_1_0_0-1.0/conf/

# 创建nginx必须的文件夹
RUN mkdir -p /data/pvc/nginx

EXPOSE 80