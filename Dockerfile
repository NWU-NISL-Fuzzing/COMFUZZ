FROM 17604768805/comfuzz_env
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
ENV COMFUZZ /root/COMFUZZ
COPY ./ $COMFUZZ

# js

ENV NODE_PATH /usr/lib/node_modules/
LABEL key="value13"
#ADD ["jsvu.tar.gz","/root/"]

# java
ENV COMFUZZ_Java $COMFUZZ/COMFUZZ_Java
RUN /bin/sh -c 'cd $COMFUZZ_Java/workline/generate_tools && jar xvf Dependencies.zip'
RUN /bin/sh -c 'mkdir $COMFUZZ_Java/workline/data'
RUN /bin/sh -c 'mkdir $COMFUZZ_Java/workline/data/model'
RUN /bin/sh -c 'cd $COMFUZZ_Java/workline/generate_tools/GenerateTestcases && mvn install'
RUN /bin/sh -c 'cd $COMFUZZ_Java/workline/mutate_tools/MutateByReplaceAPI && mvn install'
RUN /bin/sh -c 'cd $COMFUZZ_Java/workline/mutate_tools/MutateByReplaceVar && mvn install'

# workdir
WORKDIR $COMFUZZ
