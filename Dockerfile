#下载基础镜像
FROM 17604768805/comfuzz_env
# LABEL 备注信息
LABEL version="1.0"
LABEL description="comfuzz"

# 非交互模式
#DEBIAN_FRONTEND=noninteractive

#
RUN \
    DEBIAN_FRONTEND=noninteractive apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip git openssh-server curl locales clang &&  \
    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3.8 /usr/bin/python
RUN python -m pip install --no-cache-dir --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install pyyaml pymysql django django-tables2 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install torch accelerate protobuf datasets "chardet<3.1.0" "urllib3<=1.25" "sentencepiece<0.1.92" sklearn transformers -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN sed -ie 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/g' /etc/locale.gen
RUN locale-gen
ENV LANG zh_CN.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV HOME /root

# 安装node
RUN \
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash - &&  \
    DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs

RUN npm install nyc jsvu jshint estraverse esprima escodegen commander -g --registry=http://registry.npmmirror.com
ENV NODE_PATH /usr/lib/node_modules/
ENV COMFUZZ /root/Comfuzz
LABEL key="value13"
ENV http_proxy socks5://10.15.0.35:20170
ENV https_proxy socks5://10.15.0.35:20170
RUN git clone --depth=1 -b release https://github.com/lionche/Comfort_all.git  $COMFUZZ
RUN tar -zxvf $COMFUZZ/data/JStestcases.tar.gz -C $COMFUZZ/data/
RUN rm -rf $COMFUZZ/data/JStestcases.tar.gz
ENV http_proxy ""
ENV https_proxy ""

ADD ["COMFUZZ_js/data/jsvu.tar.gz","/root/"]


WORKDIR $COMFUZZ

#开启ssh服务
RUN mkdir /var/run/sshd
RUN echo 'root:123123' | chpasswd
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "service ssh restart" >> ~/.bashrc