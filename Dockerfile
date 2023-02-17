#下载基础镜像
FROM 17604768805/comfuzz_env
# LABEL 备注信息
LABEL version="1.0"
LABEL description="comfuzz"
#DEBIAN_FRONTEND=noninteractive

#
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN python -m pip install --no-cache-dir --upgrade pip
RUN locale-gen
ENV LANG zh_CN.UTF-8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV HOME /root

# Comfuzz
ENV COMFUZZ /root/Comfuzz
COPY ./ $COMFUZZ

# js
ENV NODE_PATH /usr/lib/node_modules/
LABEL key="value13"
ADD ["COMFUZZ_js/data/jsvu.tar.gz","/root/"]

# java
ENV COMFUZZ_Java $COMFUZZ/COMFUZZ_Java
RUN unzip /root/jvm_20230216.zip
RUN unzip $COMFUZZ_Java/workline/generate_tools/Dependencies.zip
RUN unzip $COMFUZZ_Java/data/model/checkpoint-400000.zip
RUN /bin/sh -c 'cd $COMFUZZ_Java/generate_tools/GenerateTestcases && mvn install'
RUN /bin/sh -c 'cd $COMFUZZ_Java/mutate_tools/MutateByReplaceAPI && mvn install'
RUN /bin/sh -c 'cd $COMFUZZ_Java/mutate_tools/MutateByReplaceVar && mvn install'

# workdir
WORKDIR $COMFUZZ

#开启ssh服务
RUN mkdir /var/run/sshd
RUN echo 'root:123123' | chpasswd
RUN echo "Port 22" >> /etc/ssh/sshd_config
RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "service ssh restart" >> ~/.bashrc