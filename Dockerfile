# 使用官方Python运行时作为父镜像
FROM python:3.8-slim
 
# 设置工作目录
WORKDIR ServerStatus/client/
 
# 将status-client.py复制到工作目录
COPY status-client.py /ServerStatus/client/
 
# 安装status-client.py所需的依赖
RUN pip install -r requirements.txt
 
# 为status-client.py指定执行命令
CMD ["python", "/ServerStatus/client/status-client.py"]