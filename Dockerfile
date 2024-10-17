# 使用官方Python运行时作为父镜像
FROM python:3.6
 
# 设置工作目录
WORKDIR /ServerStatus/client/
 
# 将status-client.py复制到工作目录
COPY status-client.py /ServerStatus/client/
 
# 为status-client.py指定执行命令
CMD ["python", "/ServerStatus/client/status-client.py"]
